a_bin = imread('../ImageLIB/cameraman.tif');
a_bin_double = double(a_bin);

minShrink = 100;
maxShrink = 200;

minVal = min(min(a_bin_double));
maxVal = max(max(a_bin_double));

shrink = (maxShrink - minShrink)/(maxVal - minVal);  %shrink factor 

a_bin_double = (a_bin_double-minVal) .* shrink;
a_bin_double = a_bin_double + minShrink;


figure(10), clf;
subplot(2, 2, 1);
imshow(a_bin);
title('Image histogram BEFORE shrinking');
subplot(2,2,2);
imhist(a_bin);

subplot(2,2,3);
a_bin_double = histogram_shrinking(a_bin, minShrink, maxShrink);
imshow(uint8(a_bin_double))
title(['Image histogram shrinking with MIN=', num2str(minShrink), ' And MAX=', num2str(maxShrink)]);
subplot(2,2,4);
imhist(uint8(a_bin_double));
