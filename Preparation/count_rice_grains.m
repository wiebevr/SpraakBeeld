% Attempts to count the rice grain in an the input image
% Writen by Wiebe Van Ranst

clear all;

%% Read the input image
original = imread('../ImageLIB/rice_image_with_intensity_gradient.tif');



%% Pre processing
o_pre = histogram_stretching(original);
%o_hist = histogram_equalisation(original);
o_pre = imfilter(o_pre, fspecial('gaussian', 15, 3));

%% Set the markers to apply watershed
o_region_max = imextendedmax(o_pre, 16);

%% Internal markers
o_int_mark = o_pre;
o_int_mark(o_region_max) = 255;

% At this point the solution can already be found
[o_count_reg, num_grains_reg] = bwlabel(o_region_max);

%% External markers
o_ext_mark = bwdist(o_region_max);
o_ext_mark = watershed(o_ext_mark);
o_ext_mark(o_ext_mark > 0) = 255;
o_ext_mark = invert(o_ext_mark);

%% Minima imposition
o_min_imp = imimposemin(gradient(o_pre), o_region_max * 255 | o_ext_mark);

%% Watershed transform
o_shed = watershed(o_min_imp);

%% Count grains
[o_count_shed, num_grains_shed] = bwlabel(o_shed);
% Note that the background of the image is also considered a watershed
% region, and is not a rice grain.
num_grains_shed = num_grains_shed - 1;

%% Show the results

%%% The images:
num_plots = [2 3];

figure(1),clf;

subplot(num_plots(1), num_plots(2), 1)
imshow(original);
title('Original');

subplot(num_plots(1), num_plots(2), 2)
imshow(uint8(o_pre));
title('Pre processing');

subplot(num_plots(1), num_plots(2), 3)
imshow(uint8(o_int_mark));
title('Internal markers');

subplot(num_plots(1), num_plots(2), 4)
imshow(uint8(o_ext_mark));
title('External markers');

subplot(num_plots(1), num_plots(2), 5)
imshow(uint8(o_min_imp));
title('Minima imposition');

subplot(num_plots(1), num_plots(2), 6)
imshow(uint8(o_shed));
title('Watershed');

figure(3),clf;
imshow(label2rgb(o_count_reg, 'jet', 'k', 'shuffle'));
colorbar;
title(['Counted grains ' int2str(num_grains_reg) ' grains found.']);

figure(4),clf;
imshow(label2rgb(o_shed, 'jet', 'k', 'shuffle'));
colorbar;
title(['Counted grains ' int2str(num_grains_shed) ' grains found.']);

%%% Histograms
%num_plots = [2 3];

figure(2),clf;

subplot(num_plots(1), num_plots(2), 1)
imhist(original);
title('Original rice grain image');

subplot(num_plots(1), num_plots(2), 2)
imhist(uint8(o_pre));
title('Pre processing');

subplot(num_plots(1), num_plots(2), 3)
imhist(uint8(o_int_mark)); 
title('Internal markers');

subplot(num_plots(1), num_plots(2), 4)
imhist(uint8(o_ext_mark));
title('External markers');

subplot(num_plots(1), num_plots(2), 5)
imhist(uint8(o_min_imp));
title('Minima imposition');

subplot(num_plots(1), num_plots(2), 6)
imhist(uint8(o_shed));
title('Watershed');