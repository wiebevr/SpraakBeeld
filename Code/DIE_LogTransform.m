a_bin = imread('../ImageLIB/cameraman.tif');

c = 30;

% Pas logaritme toe op de afbeelding %
% 1 + omdat het logaritme van 0 niet bestaat -> nu minstens 1  %
a_bin_log = c.*log(1+double(a_bin));

figure(4), clf
imshow(uint8(a_bin_log))
title(['Log Transformatie c=', num2str(c)]);

