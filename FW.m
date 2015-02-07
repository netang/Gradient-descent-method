function  R = FW( x )

%«адаем матрицу якоби
W =  [
      {@(x, y, z) 2*x*cos(x^2)}, {@(x, y, z) z},   {@(x, y, z) y+1};
      {@(x, y, z) -1/x},         {@(x, y, z) 2*y}, {@(x, y, z) cos(z)};
      {@(x, y, z) 1/(cos(x)^2)}, {@(x, y, z) -1},  {@(x, y, z) exp(z-2)};
      ];
WW = [
      {@(x, y, z) 1+2*x}, {@(x, y, z) -2*z},   {@(x, y, z) -2*y};
      {@(x, y, z) 3*z},   {@(x, y, z) 1-2*y},  {@(x, y, z) 3*x};
      {@(x, y, z) 2*y}, {@(x, y, z) 2*x},  {@(x, y, z) 1+2*z};
     ];
 
R = zeros(3);

for i = 1:3
    for j = 1:3
        R(i, j) = W{i, j}(x(1), x(2), x(3));
    end
end

end

