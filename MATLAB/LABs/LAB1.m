clear;
% Define two matrices A and B
A = [3 2 1 ; 6 5 4 ; 9 8 7];
B = [12 11 10 ; 15 14 13 ; 18 17 16];

% Add matrices A and B
matrixSum = A + B;
disp(matrixSum);

% Create a row vector containing numbers from 1 to 5
rowVector = (1:5);

% Create a column vector containing numbers from 1 to 5
columnVector = (1:5)';

% Horizontally concatenate the two vectors
horizontallyConcat = horzcat(rowVector, columnVector');

% Create a 2x2 random matrix
originalMatrix = rand(2);

% Repeat the random matrix to form a 4x4 matrix
repeatedMatrix = repmat(originalMatrix, 2, 2);

% Create the identity matrix of size 3x3
identityMatrix = eye(3);

% Compute the product of the identity matrix and matrix A
matrixProduct = identityMatrix * A;
disp(matrixProduct);
