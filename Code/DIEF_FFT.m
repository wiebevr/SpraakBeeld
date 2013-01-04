% Loads an image and applies the FFT transform
original = imread('../ImageLIB/(blown_ic_hr.tif');
%original = imread('../ImageLIB/black_square.tif');

fft_original = fft2(original);
fft_shifted = fftshift(fft_original);

ifft_original = ifft2(fft_original);


figure(30), clf;
subplot(1, 2, 1);
imshow(original);
title('Original');

subplot(1, 2, 2);
imshow(uint8(ifft_original));
title('Inverse FFT');


figure(31), clf;
subplot(1, 1,1);
imshow(log(abs(fft_shifted)),[-3 10]); colormap(jet); colorbar
title('FFT of original');

