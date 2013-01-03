a_in_shape = imread('..\ImageLIB\shapes.tif');
a_in_finger = imread('..\ImageLIB\noisy-fingerprint.tif');


struct_element = strel('square', 20);
struct_element2 = strel('square', 3);

a_in_shape_openend = imopen(a_in_shape, struct_element);
a_in_finger_openend = imopen(a_in_finger, struct_element2);


a_in_shape_closed = imclose(a_in_shape_openend, struct_element);
a_in_finger_closed  = imclose(a_in_finger_openend, struct_element2);


figure(7), clf;
subplot(2,3,1);
imshow(a_in_shape);
title('Original image');

subplot(2,3,2);
imshow(a_in_shape_openend);
title('Image openend with radius 20px');


subplot(2,3,3);
imshow(a_in_shape_closed);
title('Image closed with radius 20px');


subplot(2,3,4);
imshow(a_in_finger);
title('Original image');


subplot(2,3,5);
imshow(a_in_finger_openend);
title('Image openend with radius 20px');


subplot(2,3,6);
imshow(a_in_finger_closed);
title('Image closed with radius 20px');