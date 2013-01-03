a_bin = imread('..\ImageLIB\cameraman.tif');

% Inverteer de afbeelding %
a_bin_neg = 255 - a_bin;

figure(7), clf
imshow(a_bin_neg)
title('Original image')

