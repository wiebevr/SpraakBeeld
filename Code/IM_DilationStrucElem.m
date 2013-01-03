a_in = imread('..\ImageLIB\dip1_inv.tif');

a_gaus_noise = imnoise(a_in,'gaussian');
a_senp_noise = imnoise(a_in,'salt & pepper');
a_in_double = im2double(a_in);
a_senp_double = im2double(a_senp_noise);

a_senp_noise = a_in_double .* a_senp_double;
a_senp_noise =  a_senp_noise* 255;
a_senp_noise = uint8(a_senp_noise);

struct_element = strel('square', 3);

a_in_dil = imdilate(a_in, struct_element);
a_gaus_dil = imdilate(a_gaus_noise, struct_element);
a_senp_dil = imdilate(a_senp_noise, struct_element);

figure(6), clf;
subplot(2,3,1);
imshow(a_in);
title('Original image');

subplot(2,3,2);
imshow(a_gaus_noise);
title('Image with added gaussian noise');


subplot(2,3,3);
imshow(a_senp_noise);
title('Image with added salt & pepper');


subplot(2,3,4);
imshow(a_in_dil);
title('Dilation image');


subplot(2,3,5);
imshow(a_gaus_dil);
title('Diltated after added gaussian noise');


subplot(2,3,6);
imshow(a_senp_dil);
title('Dilated after added salt en pepper noise');