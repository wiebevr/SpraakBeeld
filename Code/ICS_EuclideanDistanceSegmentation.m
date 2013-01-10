% Euclidean Distance Segmentation
% Written by Wiebe Van Ranst

%clear all;

original = imread('../ImageLIB/jupitermoon.tif');

%% Let the user select an area
mask = roipoly(original);
o_sample_r = double(original(:,:,1));
o_sample_g = double(original(:,:,2));
o_sample_b = double(original(:,:,3));

o_sample_r(~mask) = -1;
o_sample_g(~mask) = -1;
o_sample_b(~mask) = -1;
o_sample = cat(3, o_sample_r, o_sample_g, o_sample_b);

%% Get the treshholds
thres = euclidean_distance_thresholds(o_sample)

%% Threshold the results
[sizex, sizey, ~] = size(original);
o_mask = ones(sizex, sizey) .* 0;
o_mask(...
    thres(1, 1) < original(:,:,1) & ... 
    thres(1, 2) > original(:,:,1) & ...
    thres(2, 1) < original(:,:,2) & ... 
    thres(2, 2) > original(:,:,2) & ...
    thres(3, 1) < original(:,:,3) & ... 
    thres(3, 2) > original(:,:,3)) = 1;   

%% Lay o_mask on original
o_thres = original;
for i=1:3
    o_thres(:,:,i) = immultiply(double(original(:,:,i)), o_mask);
end
    
%% Show results
num_plots = [2 2];

figure(11),clf;

subplot(num_plots(1), num_plots(2), 1)
imshow(original);
title('Original');

subplot(num_plots(1), num_plots(2), 2)
imshow(uint8(o_sample));
title('Sample area');

subplot(num_plots(1), num_plots(2), 3)
imshow(o_mask);
title('Result mask');

subplot(num_plots(1), num_plots(2), 4)
imshow(uint8(o_thres));
title('Result original');