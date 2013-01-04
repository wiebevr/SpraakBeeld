a_bin = imread('../ImageLIB/cameraman.tif');

%crop the image
a_bin_crop = a_bin(37:100, 97:160);

figure(3), clf
imshow(a_bin_crop)
title('Cropped image')