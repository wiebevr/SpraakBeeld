a_rgb = imread('..\ImageLIB\jupitermoon.tif');
figure(2);
mask = roipoly(a_rgb);


a_rgb_r = immultiply(mask, a_rgb(:,:,1));
a_rgb_g = immultiply(mask, a_rgb(:,:,2));
a_rgb_b = immultiply(mask, a_rgb(:,:,3));


a_new = cat(3, a_rgb_r, a_rgb_g, a_rgb_b);

figure(3), clf;
subplot(2,1,1);
imshow(mask);
title('Mask');

subplot(2,1,2);
imshow(a_new);
title('cut out image');

% Hier komt nog iets met euclidische dingens.


 