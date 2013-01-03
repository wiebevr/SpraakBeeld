a_rgb = imread('..\ImageLIB\jupitermoon.tif');
[r, c, p] = size(a_rgb);

a_hsi = rgb2hsi(a_rgb);

%a_hsi = uint8(a_hsi);
threshold_s_bin = max(max(a_hsi(:,:,2)))*10/100;

a_hsi_s_bin = a_hsi(:,:,2);
a_hsi_s_bin(a_hsi_s_bin >= threshold_s_bin) = 1;
a_hsi_s_bin(a_hsi_s_bin < threshold_s_bin) = 0;

a_product_h_and_s_bin = a_hsi_s_bin.*a_hsi(:,:,1);

threshold_product = max(max(a_product_h_and_s_bin))*90/100;
a_product_threshold = a_product_h_and_s_bin;

a_product_threshold(a_product_threshold >= threshold_product) = 1;
a_product_threshold(a_product_threshold < threshold_product) = 0;


figure(6), clf;
subplot(4,2,1);
imshow(a_rgb);
title('Original');

subplot(4,2,2);
imshow(a_hsi(:,:,1));
title('H plane (hsi)');

subplot(4,2,3);
imshow(a_hsi(:,:,2));
title('S plane (hsi)');

subplot(4,2,4);
imshow(a_hsi(:,:,3));
title('I plane (hsi)');

subplot(4,2,5);
imshow(a_hsi_s_bin);
title('S plane binair 10%');

subplot(4,2,6);
imshow(a_product_h_and_s_bin);
title('Product of binaru S-plane and H-plane');

subplot(4,2,7);
imhist(a_product_h_and_s_bin);
title('Histogram product S-H');

subplot(4,2,8);
imshow(a_product_threshold);
title('Segmentation result 90%');