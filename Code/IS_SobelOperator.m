a_in = imread('../ImageLIB/cameraman.tif');

a_in_edge = edge(a_in,'sobel');
a_in_edge_thresh = edge(a_in,'sobel', 'nothinning' );

figure(9), clf;
subplot(1,3,1);
imshow(a_in);
title('Original image');


subplot(1,3,2);
imshow(a_in_edge);
title(['Edge detector with sobel operator (3x3) ', num2str(0)]);

subplot(1,3,3);
imshow(a_in_edge_thresh);
title(['Edge detector with sobel operator (3x3) ', num2str(0)]);