a_bin = imread('..\ImageLIB\weld_defect.tif');
a_bin_out = a_bin;

threshold = 253;

a_bin_out(a_bin_out <= threshold) = 0;
a_bin_out(a_bin_out > threshold) = 255;

figure(9), clf
imshow(a_bin);
title('Original');
figure(10), clf
imshow(a_bin_out, [0,0,1; 1,1,0]);
title('Color gesliced');
