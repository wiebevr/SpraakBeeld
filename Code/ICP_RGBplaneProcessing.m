a_rgb = imread('../ImageLIB/peppers.jpg');
[r, c, p] = size(a_rgb);

a_r_plane = a_rgb(:,:,1);
a_g_plane = a_rgb(:,:,2);
a_b_plane = a_rgb(:,:,3);

a_r_plane_double = double(a_r_plane);
a_g_plane_double = double(a_g_plane);
a_b_plane_double = double(a_b_plane);

a_r_plan_d = FuncEqualisation(a_r_plane_double);
a_g_plan_d = FuncEqualisation(a_g_plane_double);
a_b_plan_d = FuncEqualisation(a_b_plane_double);

figure(5), clf;
subplot(3,3,1);
imhist(a_r_plane);
title('R plane (rgb)');

subplot(3,3,2);
imhist(a_g_plane);
title('G plane (rgb)');

subplot(3,3,3);
imhist(a_b_plane);
title('B plane (rgb)');

subplot(3,3,4);
imhist(uint8(a_r_plan_d));
title('R plane (rgb) Equalized');

subplot(3,3,5);
imhist(uint8(a_g_plan_d));
title('G plane (rgb) Equalized');

subplot(3,3,6);
imhist(uint8(a_b_plan_d));
title('B plane (rgb) Equalized');


subplot(3,3,8);
imshow(uint8(cat(3,a_r_plan_d, a_g_plan_d, a_b_plan_d)));
title('All planes (rgb)');

