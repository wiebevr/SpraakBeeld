function [ a_bin_zoom ] = zero_order_zoom( input, zoom)
%ZERO_ORDER_ZOOM Zero order zoom of magnification times.

%-----------------zero order zoom image-----------------

[x,y]=size(input);
a_bin_zoom=[];
for i=1:x,
   for j=1:zoom,
        a_bin_zoom=[a_bin_zoom input(:,i)];
   end
end
input = a_bin_zoom;
a_bin_zoom=[];
for i=1:y,
    for j=1:zoom,
        a_bin_zoom=[a_bin_zoom; input(i,:)];
    end
end
end