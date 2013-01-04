function [ output ] = bit_plane_slicing( input, plane_num)
%BIT_PLANE_SLICING Bit plane slicing, plane num is the requested plane, we
%assume a depth of 8.

output = bitshift(bitand(input, 2^plane_num), -plane_num) .* 255;

end

