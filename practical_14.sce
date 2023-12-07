function f = myFunction(x)
    f = x^3 - 2*x^2 + 4;
endfunction

function df = myDerivative(x)
    df = 3*x^2 - 4*x;
endfunction

x0 = 2.0;

tolerance = 1e-6;

maxIterations = 100;

for i = 1:maxIterations
    f_x0 = myFunction(x0);
    df_x0 = myDerivative(x0);
    
    x1 = x0 - f_x0 / df_x0;
    
    if abs(x1 - x0) < tolerance
        break;
    end
    
    x0 = x1;
end

if i >= maxIterations
    disp('Newton-Raphson method did not converge within the specified number of iterations.');
else
    disp(['The root is approximately x = ', string(x0)]);
    disp(['Number of iterations: ', string(i)]);
end
