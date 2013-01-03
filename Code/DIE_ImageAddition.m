a_bin1 = imread('..\ImageLIB\cameraman.tif');
a_bin2 = imread('..\ImageLIB\Lenna_BW_crop.tif');
offset = 20;

a_bin1_double = double(a_bin1);
a_bin2_double = double(a_bin2);

a_bin_total = a_bin1_double + a_bin2_double;
a_bin_total = a_bin_total - offset;

a_bin_total = uint8(a_bin_total);

figure(13), clf;
subplot(1, 3, 1);
imshow(a_bin1);
title('Cameraman');
subplot(1,3,2);
imshow(a_bin2);
title('Lenna');
subplot(1,3,3);
imshow(a_bin_total);
title('Cameraman + Lenna');
