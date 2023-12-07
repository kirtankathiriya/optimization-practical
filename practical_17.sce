A = [1 2; 2 3; 3 4];  // Define the constraint matrix A
b = [5; 7; 9];        // Define the constraint vector b
H = [2 0; 0 4];       // Define the Hessian matrix H (quadratic coefficient matrix)
f = [-4; -5];         // Define the linear coefficient vector f

lb = [0; 0];          // Define lower bounds on variables
ub = [Inf; Inf];      // Define upper bounds on variables

[x, fval, exitflag, output, lambda] = qp_solve(H, f, A, b, [], [], lb, ub);

disp('Optimal Solution:');
disp(x);
disp('Optimal Objective Value:');
disp(fval);
disp('Exit Flag:');
disp(exitflag);
