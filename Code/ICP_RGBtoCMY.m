a_rgb = imread('../ImageLIB/Lenna_RGB.tif');
[r, c, p] = size(a_rgb);

% Take the inverse
a_rgb_cmy = imcomplement(a_rgb);

% Display the images
figure(3), clf;
subplot(1,3,1);
imshow(a_rgb_cmy(:,:,1));
title('C plane (cmy)');

subplot(1,3,2);
imshow(a_rgb_cmy(:,:,2));
title('M plane (cmy)');

subplot(1,3,3);
imshow(a_rgb_cmy(:,:,3));
title('Y plane (cmy)');
