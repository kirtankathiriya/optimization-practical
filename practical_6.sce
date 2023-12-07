// Define a vector
vector = [1, 2, 3, 4, 5];
// Calculate the L1 norm (sum of absolute values)
l1_norm = norm(vector, 1);
// Calculate the L2 norm (Euclidean norm)
l2_norm = norm(vector, 2);
// Calculate the infinity norm (maximum absolute value)
inf_norm = norm(vector, 'inf');

disp('Vector:');
disp(vector);
disp('L1 Norm:');
disp(l1_norm);
disp('L2 Norm:');
disp(l2_norm);
disp('Infinity Norm:');
disp(inf_norm);

// Define a matrix
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];
// Calculate the Frobenius norm
frobenius_norm = norm(matrix, 'fro');

disp('Matrix:');
disp(matrix);
disp('Frobenius Norm:');
disp(frobenius_norm);
