bits = 4;
a_bin = imread('../ImageLIB/cameraman.tif');


figure(4), clf
imshow(quantisation(a_bin, 2^bits))
title([num2str(bits), ' bit quantised image'])