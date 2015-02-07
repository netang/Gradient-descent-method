function R = VectorFunctionF( x )

F = [
       {@(x, y, z) sin(x^2)+z*y+z-1};
       {@(x, y, z) sin(z)+y^2-log(x)-1};
       {@(x, y, z) tan(x)-y+exp(z-2)-0.5}
    ];
FF = [ 
        {@(x, y, z) x+x^2-2*y*z-0.1};
        {@(x, y, z) y-y^2+3*x*z+0.2};
        {@(x, y, z) z+z^2+2*x*y-0.3};
    ];
R = [0; 0; 0];
for i = 1:3
    R(i) = F{i}(x(1), x(2), x(3));
end

end

