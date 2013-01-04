a_bin1 = imread('../ImageLIB/Lenna_BW_crop.tif');
a_bin2 = imread('../ImageLIB/Lenna_BW_crop_twinsister2.tif');
offset = 0;

a_bin1_double = double(a_bin1);
a_bin2_double = double(a_bin2);

a_bin_total = a_bin1_double - a_bin2_double;
a_bin_total = a_bin_total + offset;

% Histogram streching
a_bin_total_eq = a_bin_total;

minStrech = 0;
maxStrech = 255;

minVal = min(min(a_bin_total_eq));
maxVal = max(max(a_bin_total_eq));

shrink = (maxStrech - minStrech)/(maxVal - minVal);  %shrink factor 

a_bin_total_eq = (a_bin_total_eq-minVal) .* shrink;


a_bin_total = uint8(a_bin_total);
a_bin_total_eq = uint8(a_bin_total_eq);


figure(14), clf;
subplot(2, 2, 1);
imshow(a_bin1);
title('Lenna');
subplot(2,2,2);
imshow(a_bin2);
title('Lenna twinsister');
subplot(2,2,3);
imshow(a_bin_total);

title('lenna - lenna twinsister');
subplot(2,2,4);
imshow(uint8(image_subtraction(a_bin1, a_bin2, 127)));
%imshow(a_bin_total_eq);

title('Histogram equalisition');