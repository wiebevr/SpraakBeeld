a_rgb = imread('..\ImageLIB\peppers.jpg');
[r,c,p] = size(a_rgb);
hsi = rgb2hsi(a_rgb);

hhsi = hsi;
shsi = hsi;
ihsi = hsi;
%func_contrast_stretching(foto, underline, upperline, slope)
hhsi(:,:,1) = contrast_stretching(hsi(:,:,1), 30, 255, 1.9);
shsi(:,:,2) = contrast_stretching(hsi(:,:,2), 30, 255, 1.9);
ihsi(:,:,3) = contrast_stretching(hsi(:,:,3), 30, 255, 1.9);


figure(2), clf

subplot(3,3,1);
imhist(hsi(:,:,1));
title('H_plane(hsi)');

subplot(3,3,2);
imhist(hsi(:,:,2));
title('S_plane(hsi)');

subplot(3,3,3);
imhist(hsi(:,:,3));
title('I_plane(hsi)');

subplot(3,3,4);
imhist(hhsi(:,:,1));
title('H_plane contrast scaling');

subplot(3,3,5);
imhist(shsi(:,:,2));
title('S_plane contrast scaling');

subplot(3,3,6);
imhist(ihsi(:,:,3));
title('I_plane contrast scaling');

subplot(3,3,7);
imshow(hsi2rgb(hhsi));
title('H_plane(hsi)');

subplot(3,3,8);
imshow(hsi2rgb(shsi));
title('S_plane(hsi)');

subplot(3,3,9);
imshow(hsi2rgb(ihsi));
title('I_plane(hsi)');