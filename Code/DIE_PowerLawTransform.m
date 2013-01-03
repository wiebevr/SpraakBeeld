a_bin = imread('..\ImageLIB\cameraman.tif');

c = 30;
y = 0.1;

% Pas logaritme toe op de afbeelding %
a_bin_log = c.*double(a_bin).^y;

figure(5), clf
imshow(uint8(a_bin_log))
title(['Power Low Transformatie c=', num2str(c), ' y=', num2str(y)]);

