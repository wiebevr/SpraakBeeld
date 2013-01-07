input = imread('../ImageLIB/lenna_RGB.tif');

lp_mask = [1 1 1; 1 1 1; 1 1 1] ./ 9;
hp_mask = [1 1 1; 1 -8 1; 1 1 1];

%% HSI (Only on intensity)

input_hsi = rgb2hsi(input);
input_hsi_lp = input_hsi;
input_hsi_hp = input_hsi;

input_hsi_lp(:,:,3) = conv2(input_hsi(:,:,3), lp_mask);
input_hsi_hp(:,:,3) = conv2(input_hsi(:,:,3), hp_mask);

input_lp = input;
input_hp = input;
for i=1:3
   input_lp(:,:,i) = conv2(input_hsi(:,:,i), lp_mask);
   input_hp(:,:,i) = conv2(input_hsi(:,:,i), hp_mask);
end


a_bin_double = double(a_bin);

figure(12), clf;

subplot(2, 3, 1);
imshow(a_bin);
title('Lenna');

subplot(2, 3, 3);
imshow(uint8(rgb2hsi(input_hsi_lp)));
title('HSI LP');

subplot(2, 3, 4);
imshow(uint8(rgb2hsi(input_hsi_hp)));
title('HSI HP');

subplot(2, 3, 5);
imshow(uint8(input_lp))
title('RGB LP');

subplot(2, 3, 6);
imshow(uint8(input_hp))
title('RGB HP');