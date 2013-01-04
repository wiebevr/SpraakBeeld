a_bin = imread('../ImageLIB/cameraman.tif');
a_bin_double = double(a_bin);
underlim = 1;
upperlim = 50;
lowRange = 1;
upperRange = 200;
white = 255;
% Pas contrast slope toe op de afbeelding %

[x,y]=size(a_bin_double);
a_bin_sliced = a_bin_double;
a_bin_sliced2 = a_bin_double;
for i=1:x,
   for j=1:y,
        if (a_bin_double(i,j) > underlim && a_bin_double(i,j) < upperlim)
            a_bin_sliced(i,j) = upperRange;
            a_bin_sliced2(i,j) = white;
        else 
            a_bin_sliced(i,j) = lowRange;
        end
   end
end


figure(7), clf
imshow(uint8(a_bin_sliced))
title(['Gray-level slicing high underlim=', num2str(underlim), ' upperlim=', num2str(upperlim), ' graylevelRange=', num2str(lowRange), ' - ', num2str(upperRange)]);


figure(8), clf
imshow(uint8(a_bin_sliced2))
title(['Gray-level slicingunderlim=', num2str(underlim), ' upperlim=', num2str(upperlim), ' graylevel=', num2str(white)]);
