// Define the linear programming problem:
// Minimize: c'x
// Subject to: Ax <= b

// Define the problem parameters
c = [3; 2; 5];  // Objective coefficients
A = [1, 1, 2; 2, 1, 3; 3, 3, 4];  // Coefficient matrix for constraints
b = [4; 5; 7];  // Right-hand side of constraints

// Solve the linear programming problem using the 'linprog' function
[x, fval, exitflag, output] = linprog(c, -A, -b);

// Display the results
if exitflag == 1
    disp('Optimal solution found:');
    disp(['x = ', mat2str(x)]);
    disp(['Optimal objective value = ', string(-fval)]);
else
    disp('Optimal solution not found.');
end
