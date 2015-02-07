function [ output_args ] = main( input_args )

clc

x = [1; 1; 1]; %начальное приближение
k = 0;
f = VectorFunctionF(x);
while dot( f, f ) > 10^(-3)
    W = FW(x);
    m = dot(f, W*W'*f)/dot(W*W'*f,W*W'*f);
    x = x - m*W'*f;
    f = VectorFunctionF(x);
    k = k + 1;
end
disp('Решение с точностью eps = 10^(-3)')
x
disp(strcat(num2str(k),' итерации(й)'));


end

