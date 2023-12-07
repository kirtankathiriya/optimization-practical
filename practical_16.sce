// Define the objective function to be minimized.
function f = objective(x)
    f = (x - 2)^2 + 3;
endfunction

// Fibonacci Search implementation.
function [xmin, fmin] = fibonacciSearch(a, b, n)
    fib = [1, 1];
    for i = 3:n
        fib(i) = fib(i-1) + fib(i-2);
    end
    
    x1 = a + (fib(n-2) / fib(n)) * (b - a);
    x2 = a + (fib(n-1) / fib(n)) * (b - a);
    f1 = objective(x1);
    f2 = objective(x2);
    
    for i = 1:n-2
        if f1 < f2
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = a + (fib(n-i-2) / fib(n-i-1)) * (b - a);
            f1 = objective(x1);
        else
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + (fib(n-i-1) / fib(n-i)) * (b - a);
            f2 = objective(x2);
        end
    end
    
    xmin = (a + b) / 2;
    fmin = objective(xmin);
endfunction

// Set initial bounds and number of iterations.
a = 0;
b = 4;
n = 10;

// Call the Fibonacci Search.
[xmin, fmin] = fibonacciSearch(a, b, n);

// Display the result.
disp(['Minimum at x = ', string(xmin)]);
disp(['Minimum value = ', string(fmin)]);
