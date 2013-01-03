clear all;
%Sharpening Filter
foto = imread('..\ImageLIB\cameraman.tif');

foto_double = double(foto);
[r,c] = size(foto_double);

conv_mask_laplacian = [1 1 1; 1 -8 1; 1 1 1];
[convr,convc] = size(conv_mask_laplacian);

figure(2), clf
subplot(1,3,1)
imshow(foto)
title('Original')


%Doe de convolutie
copy = zeros(r, c);
som = 0;
for i = 2:r-1
    for j = 2:c-1
        for a = 1:convr
            for b = 1:convc
                som = som + foto_double(i+a-2,j+b-2)*conv_mask_laplacian(a,b);
            end
        end
        copy(i,j) = som;
        som = 0;
    end
end

foto_double = foto_double - copy;

subplot(1,3,2)
imshow(uint8(copy))
title('Sharperning, edges')
subplot(1,3,3)
imshow(uint8(foto_double))
title('Sharperning addition with original')