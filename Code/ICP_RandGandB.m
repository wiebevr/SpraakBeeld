a_rgb = imread('..\ImageLIB\Lenna_RGB.tif');
[r, c, p] = size(a_rgb);


figure(3), clf;
subplot(1,3,1);
imshow(a_rgb(:,:,1));
title('R plane (rgb)');

subplot(1,3,2);
imshow(a_rgb(:,:,2));
title('G plane (rgb)');

subplot(1,3,3);
imshow(a_rgb(:,:,3));
title('B plane (rgb)');