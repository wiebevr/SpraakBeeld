function [ a_bin_contrast ] = contrast_stretching( a_bin, underl, upperl,  contrastsl )

a_bin_double = double(a_bin);

underlim = underl;
upperlim = upperl;
contrastslope = contrastsl;

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

end

