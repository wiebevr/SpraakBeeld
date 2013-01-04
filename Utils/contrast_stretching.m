function [ output ] = contrast_stretching( a_bin, underlim, slope )
%CONTRAST_STRETCHING

a_bin_double = double(a_bin);
upperlim = 255-underlim;

% Pas contrast slope toe op de afbeelding %

output = a_bin_double;

test = (a_bin_double > underlim & a_bin_double < upperlim);
output(test) = a_bin_double(test) .* slope;
output(~test) = a_bin_double(~test) ./ slope;

end

