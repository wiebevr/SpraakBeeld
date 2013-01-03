a_bin = imread('..\ImageLIB\Lenna_BW_crop.tif');
%a_bin_noise
offset = 0;
sigma = 0.2;
box_filter_mask = [1 1 1; 1 1 1; 1 1 1];
weighted_avarage_mask = [1 2 1; 2 4 2; 1 2 1];

%a_bin_double = im2double(a_bin);
%a_bin_double = a_bin_double-min(min(a_bin_double));
%a_bin_double = round(a_bin_double/(max(max(a_bin_double)/256)));

a_bin_double = double(a_bin);

a_bin_conv = conv2(a_bin_double, box_filter_mask)./9;
a_bin_conv2 = conv2(a_bin_double, weighted_avarage_mask) ./16;




a_bin_conv = uint8(a_bin_conv);
a_bin_conv2 = uint8(a_bin_conv2);


figure(12), clf;
subplot(3, 3, 1);
imshow(a_bin);
title('Lenna');
subplot(3,3,2);
imshow(uint8(a_bin_conv));
title('Lenna conv');
subplot(3,3,3);
imshow(uint8(a_bin_conv2));
title('Lenna covn2');
subplot(3,3,4);
%imshow(a_bin_total_eq);
title('Histogram equalisition');