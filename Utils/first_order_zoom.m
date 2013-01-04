function [ input ] = zero_order_zoom( input, zoom)
%ZERO_ORDER_ZOOM Zero order zoom of magnification times.

%-----------------zero order zoom image-----------------

input = im2double(input);

for k=1:zoom
    [x,y]=size(input);

    
    a_bin_zoom=[];
    for i=1:x
       for j=1:2
           if (j == 2)
               a_bin_zoom=[a_bin_zoom input(:,i)];
           else
               a_bin_zoom=[a_bin_zoom zeros(y,1)];
           end
       end
    end
    input = a_bin_zoom;
    a_bin_zoom=[];
    for i=1:y
        for j=1:2
            if (j == 2)
                a_bin_zoom=[a_bin_zoom; input(i,:)];
            else
                a_bin_zoom=[a_bin_zoom; zeros(1,x * 2)];
            end
        end
    end

    mask = [.25 .5 .25; .5 1 .5; .25 .5 .25];
    input = conv2(a_bin_zoom, mask);
end

end