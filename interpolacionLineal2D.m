function J = interpolacionLineal2D(X)

    load interpolacionLineal1D.m;
    n = size(X)(2);
    Y2D = [];
    for i = 1:n 
       Y2D(:, i) = interpolacionLineal1D(X(:, i));
    end
       Z = Y2D';
       W = [];
    for i = 1:2*n
       W(:, i) = interpolacionLineal1D(Z(:, i));
    end
    J = W';
