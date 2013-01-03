clear ALL;
a_bin=imread('..\ImageLIB\cameraman.tif');


%-----------------cropped image (stuk uit foot halen)-----------------                        
a_bin_crop=a_bin(37:100,97:160);    %} Even stuk eruit om kleinere foto te hebben


%-----------------zero order zoom image-----------------
zoom=8;

[x,y]=size(a_bin_crop);
a_bin_zoom=[];
for i=1:x,
   for j=1:zoom,
        a_bin_zoom=[a_bin_zoom a_bin_crop(:,i)];
   end
end
a_bin_crop = a_bin_zoom;
a_bin_zoom=[];
for i=1:y,
    for j=1:zoom,
        a_bin_zoom=[a_bin_zoom; a_bin_crop(i,:)];
    end
end

figure(5), clf
imshow(a_bin_zoom)
title('Zero order zoom')
