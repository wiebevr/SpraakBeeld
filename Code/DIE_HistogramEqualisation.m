a_bin = imread('../ImageLIB/cameraman_low_contrast.tif');
a_bin_d = double(a_bin);

histogram = zeros(256,1);

a_bin_double = FuncEqualisation(a_bin_d);

figure(12), clf;
subplot(2, 2, 1);
imshow(a_bin);
title('Image histogram BEFORE equaliztion');
subplot(2,2,2);
imhist(a_bin);

subplot(2,2,3);
imshow(uint8(a_bin_double))
title('Image histogram equalization');
subplot(2,2,4);
imhist(uint8(a_bin_double));
