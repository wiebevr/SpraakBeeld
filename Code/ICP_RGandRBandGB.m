clear all;
%Combineer 2 kleuren van een foto
offset = 0;

foto = imread('..\ImageLIB\lenna_RGB.tif');

foto_rood = foto(:,:,1);
foto_groen = foto(:,:,2);
foto_blauw = foto(:,:,3);

[r c] = size(foto_rood)

figure(4), clf
subplot(1,3,1)
rg = cat(3, foto_rood, foto_groen, offset*ones(r,c));
imshow(rg)
title('roodgroen')

subplot(1,3,2)
rb = cat(3, foto_rood, offset*ones(r,c), foto_blauw);
imshow(rb)
title('roodblauw')

subplot(1,3,3)
gb = cat(3, offset*ones(r,c), foto_groen, foto_blauw);
imshow(gb)
title('groenblauw')