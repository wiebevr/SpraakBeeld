a_rgb = imread('..\ImageLIB\peppers.jpg');
[r, c, p] = size(a_rgb);

kernel1 = fspecial('average',5);
kernel2 = fspecial('unsharp',0.1);

smoothing_rgb = imfilter(a_rgb, kernel1);
sharpening_rgb = imfilter(a_rgb, kernel2);

figure(1), clf
subplot(1,2,1)
imshow(smoothing_rgb)
subplot(1,2,2)
imshow(sharpening_rgb)