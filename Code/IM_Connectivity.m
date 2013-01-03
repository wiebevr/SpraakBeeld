a_in = imread('..\ImageLIB\dip1_inv.tif');

struct_element = strel('square', 3);
struct_element2 = strel('square', 15);

[L, count] = bwlabel(a_in, 4);

a_in_dil = imdilate(a_in, struct_element);
[L, count2] = bwlabel(a_in_dil, 4);


a_in_dil2 = imdilate(a_in, struct_element2);
[L, count3] = bwlabel(a_in_dil2, 4);

figure(9), clf;
subplot(1,3,1);
imshow(a_in);
title(['Original image, aantal woorden: ', num2str(count)]);


subplot(1,3,2);
imshow(a_in_dil);
title(['Dilated image, aantal woorden: ', num2str(count2)]);

subplot(1,3,3);
imshow(a_in_dil2);
title(['Hard dilated image, aantal woorden: ', num2str(count3)]);