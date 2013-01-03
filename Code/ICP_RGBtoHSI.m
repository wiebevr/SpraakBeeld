a_rgb = imread('..\ImageLIB\peppers.jpg');
[r, c, p] = size(a_rgb);

a_hsi = rgb2hsi(a_rgb);
%a_hsi = uint8(a_hsi);


figure(3), clf;
subplot(1,3,1);
imshow(a_hsi(:,:,1));
title('H plane (hsi)');

subplot(1,3,2);
imshow(a_hsi(:,:,2));
title('S plane (hsi)');

subplot(1,3,3);
imshow(a_hsi(:,:,3));
title('I plane (hsi)');