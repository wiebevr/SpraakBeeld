a_bin = imread('../ImageLIB/cameraman.tif');
a_bin_double = double(a_bin);
underlim = 1;
upperlim = 50;
lowRange = 1;
upperRange = 200;
white = 255;

figure(7), clf
%imshow(uint8(a_bin_sliced))
imshow(uint8(gray_level_slicing_mask(a_bin, underlim, upperlim, lowRange, upperRange)));
title(['Gray-level slicing high underlim=', num2str(underlim), ' upperlim=', num2str(upperlim), ' graylevelRange=', num2str(lowRange), ' - ', num2str(upperRange)]);


figure(8), clf
%imshow(uint8(a_bin_sliced2))
imshow(uint8(gray_level_slicing_bg(a_bin, underlim, upperlim, white)));
title(['Gray-level slicingunderlim=', num2str(underlim), ' upperlim=', num2str(upperlim), ' graylevel=', num2str(white)]);
