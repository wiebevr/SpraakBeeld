bits = 4;
a_bin = imread('../ImageLIB/cameraman.tif');

%Convert to double
a_bin_double = im2double(a_bin);
%Quantise image with X-bits
a_bin_double = (1/(2^bits-1))*round(a_bin_double.*(2^bits-1));
%Scale graylevels between 0..255
a_bin_double = a_bin_double-min(min(a_bin_double));
a_bin_double = round(a_bin_double/(max(max(a_bin_double))/255));

%quantisation of gray scale image
a_bin_quantised = uint8(a_bin_double);

figure(4), clf
imshow(a_bin_quantised)
title([num2str(bits), ' bit quantised image'])