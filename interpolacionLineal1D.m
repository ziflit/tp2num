function Y = interpolacionLineal1D(x) 
   n = size(x)(1);
   Y = [];
   for i = 1:(n-1)
      Y(2*i - 1, 1) = x(i);
      Y(2*i, 1) = ( x(i) + x(i+1) ) / 2;
   end
   Y(2*n-1) = x(n);
   Y(2*n) = x(n);
   
