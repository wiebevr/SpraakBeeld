function [ a_bin ] = FuncEqualisation( a_bin_double )
    histogram = zeros(1,256);
    [x,y]=size(a_bin_double);
    for i=1:x,
       for j=1:y,
            histogram(a_bin_double(i,j)+1) = histogram(a_bin_double(i,j)+1) + 1;
       end
    end

    totHisto = sum(histogram);
    for k=2:256,
        histogram(k) = histogram(k-1) + histogram(k);
    end

    normalized = round((histogram./totHisto)*255);

    for i=1:x,
       for j=1:y,
           if( a_bin_double(i, j) == 0 )
              a_bin_double(i, j) = 1; 
           end
           a_bin_double(i, j) = normalized(a_bin_double(i, j));
       end
    end
    a_bin = a_bin_double;

end

