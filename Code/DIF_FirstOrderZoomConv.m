clear ALL;
a_bin=imread('..\ImageLIB\cameraman.tif');

%-----------------first order zoom image-----------------

zoom=8;

[x,y]=size(a_bin_crop);
a_bin_zoom=[];
a_bin_zoom_filled = zeros(x*2+1, y*2+1);
for i=1:x,
   for j=1:y,
        a_bin_zoom_filled(i*2, j*2) = a_bin_crop(i, j);
   end
end

%for i=1:x,
%   for j=1:zoom,
%        a_bin_zoom=[a_bin_zoom a_bin_crop(:,i)];
%   end
%end
%a_bin_crop = a_bin_zoom;
%a_bin_zoom=[];
%for i=1:y,
%    for j=1:zoom,
%        a_bin_zoom=[a_bin_zoom; a_bin_crop(i,:)];
%    end
%end

figure(6), clf
imshow(a_bin_zoom_filled)
title(['First order zoom with conv. mask (', num2str(zoom),')'])
