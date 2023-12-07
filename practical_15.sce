
function f = objective(x)
    f = (x - 2)^2 + 3;
endfunction

function [xmin, fmin] = goldenSectionMethod(a, b, tolerance)
    phi = (1 + sqrt(5)) / 2;  // Golden ratio ~ 1.618
    x1 = b - (b - a) / phi;
    x2 = a + (b - a) / phi;
    f1 = objective(x1);
    f2 = objective(x2);
    
    while abs(b - a) > tolerance
        if f1 < f2
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = b - (b - a) / phi;
            f1 = objective(x1);
        else
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + (b - a) / phi;
            f2 = objective(x2);
        end
    end
    
    xmin = (a + b) / 2;
    fmin = objective(xmin);
endfunction

a = 0;
b = 4;
tolerance = 1e-6;

[xmin, fmin] = goldenSectionMethod(a, b, tolerance);

disp(['Minimum at x = ', string(xmin)]);
disp(['Minimum value = ', string(fmin)]);
