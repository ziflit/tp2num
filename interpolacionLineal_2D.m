function Y = interpolacionLineal_2D(X, method)
    n = size(X)(1);
    Y = interp1([1:n]', X, [1:0.5:n]', method);
    Y = Y([1:(2*n-1) (2*n-1)], :)';
    Y = interp1([1:n]', Y, [1:0.5:n]', method);
    Y = Y([1:(2*n-1) (2*n-1)], :)';
