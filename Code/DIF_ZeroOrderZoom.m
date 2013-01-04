clear ALL;
original=imread('../ImageLIB/cameraman.tif');

zoomed = zero_order_zoom(crop_image(original, 97, 37, 160-97, 100-37), 4);

figure(5), clf
imshow(zoomed)
title('Zero order zoom')
