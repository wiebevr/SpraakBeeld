a_bin = imread('../ImageLIB/cameraman.tif');
a_bin_double = double(a_bin);
underlim = 30;
contrastslope = 1.9;

%{
upperlim = 255-underlim;
% Pas contrast slope toe op de afbeelding %

[x,y]=size(a_bin_double);
a_bin_contrast = a_bin_double;
for i=1:x,
   for j=1:y,
        if (a_bin_double(i,j) > underlim && a_bin_double(i,j) < upperlim)
            a_bin_contrast(i,j) = a_bin_double(i,j) * contrastslope;
        else
            a_bin_contrast(i,j) = a_bin_double(i,j) / contrastslope;
        end
   end
end
%}


figure(6), clf
imshow(uint8(contrast_stretching(a_bin, underlim, contrastslope)));
%imshow(uint8(a_bin_contrast));
title(['Contrast stretching underlim=', num2str(underlim), ' upperlim=', num2str(upperlim), ' contrastslope=', num2str(contrastslope)]);

