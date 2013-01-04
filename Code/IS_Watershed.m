a_in = imread('../ImageLIB/small-blobs.tif');
%I = rgb2gray(a_in);

h = fspecial('sobel');
I_double = double(a_in);
g = sqrt(imfilter(I_double, h, 'replicate').^2 + imfilter(I_double, h', 'replicate').^2 );

L = ~watershed(g);

struct_element = strel('square', 3);
O = imopen(g, struct_element);
C = imclose(O, struct_element);

W = ~watershed(C);

figure(19), clf;
subplot(2,4,1);
imshow(a_in);
title('Original image');


subplot(2,4,2);
imshow(g,[]);
title('Gradient magnitude image');

subplot(2,4,3);
imshow(L);
title('Watershed transform of gradient magnitude image');


subplot(2,4,4);
imshow(W);
title('Regional minima of gradient magnitude');


subplot(2,4,5);
%imshow(a_in_edge_thresh);
title('Internal markers (deep regional minima superimposed on orignal)');


subplot(2,4,6);
%imshow(a_in_edge_thresh);
title('External markers');


subplot(2,4,7);
%imshow(a_in_edge_thresh);
title('Modified gradient magnitude (procedure of ');


subplot(2,4,8);
%imshow(a_in_edge_thresh);
title('(Watershed transform of modified gradient');