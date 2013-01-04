a_in = imread('../ImageLIB/building.tif');

threshold = [0.08, 0.1] ;
sigma = 3;

a_in_edge = edge(a_in,'canny', threshold, sigma);

[h_matr, theta, rho] = hough(a_in_edge);

numpeaks = 15;
P  = houghpeaks(h_matr,numpeaks, 'Threshold', 0.2*max(h_matr(:)));
effective_peaks = size(P);

lines = houghlines(a_in_edge,theta,rho,P,'FillGap',30,'MinLength',30);


%a_in_edge_thresh = edge(a_in,'sobel', 'nothinning' );

figure(9), clf;
subplot(2,2,1);
imshow(a_in);
title('Original image');


subplot(2,2,2);
imshow(a_in_edge);
title('Canny edge detection');

subplot(2,2,3);
imshow(imadjust(mat2gray(h_matr)), 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
axis on, axis normal, hold on;
plot(theta(P(:,2)),rho(P(:,1)),'s','color','red');
%imshow(a_in_edge_thresh);
title('Hough peaks ');


subplot(2,2,4);
%imshow(h_matr, 'XData', theta, 'YData', rho, 'InitialMagnification', 'fit');
%imshow(a_in_edge_thresh);
imshow(a_in_edge); 
hold on;
max_len = 0;
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

    % plot beginnings and ends of lines
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

    % determine the endpoints of the longest line segment 
    len = norm(lines(k).point1 - lines(k).point2);
    if ( len > max_len)
        max_len = len;
        xy_long = xy;
    end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');
title('Hough lines');