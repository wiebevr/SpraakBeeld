clear ALL;
original=imread('../ImageLIB/cameraman.tif');

%-----------------first order zoom image-----------------

zoom=3;


zoomed = first_order_zoom(crop_image(original, 97, 37, 160-97, 100-37), zoom);

figure(5), clf
imshow(zoomed)
title('Zero order zoom')
