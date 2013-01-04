a_bin = imread('../ImageLIB/cameraman_low_contrast.tif');
a_bin_double = double(a_bin);

minStrech = 0;
maxStrech = 255;

minVal = min(min(a_bin_double));
maxVal = max(max(a_bin_double));

shrink = (maxStrech - minStrech)/(maxVal - minVal);  %shrink factor 

a_bin_double = (a_bin_double-minVal) .* shrink;

figure(11), clf;
subplot(2, 2, 1);
imshow(a_bin);
title('Image histogram BEFORE shrinking');
subplot(2,2,2);
imhist(a_bin);

subplot(2,2,3);
imshow(uint8(a_bin_double))
title(['Image histogram shrinking with MIN=', num2str(minStrech), ' And MAX=', num2str(maxStrech)]);
subplot(2,2,4);
imhist(uint8(a_bin_double));
