clear;
clc;
%% Numiric Types:

%Define and initialize a variable intVar with an integer value of your choice.
intVar = 10;

% Define and initialize a variable doubleVar with a double-precision floating-point value.
doubleVar = 15.687;

% Display the data type of both intVar and doubleVar using the class function.
fprintf(' The integer is  : %d,\n The Dulble number is: %d\n',intVar,doubleVar);


%% Creating Numeric Arrays:

%Create a row vector evenNumbers containing the first 5 even numbers (2, 4, 6, 8, 10).
evenNumbers = 0:2:10 ;

%Create a column vector primeNumbers containing the first 5 prime numbers (2, 3, 5, 7, 11).
primeNumber = [2 ;3 ;5 ; 7 ; 11];

%Display both evenNumbers and primeNumbers.
disp("The even numbers are: ");
disp(evenNumbers);
disp("The prime numbers are: ");
disp(primeNumber);

%% Specialized Matrix Functions:

% Create a 3x3 identity matrix identityMatrix using a specialized matrix function.
eyematrix = eye(3,3);

% Create a 2x2 magic square magicSquare using another specialized matrix function.
magicmatrix = magic(2);

% Display both identityMatrix and magicSquare.
disp("The identity matrix is: ");
disp(eyematrix);
disp("The magic matrix is : ");
disp(magicmatrix);


%% Matrix Concatenation:

% Concatenate the evenNumbers vector horizontally with the primeNumbers vector to create a new row vector combinedVector.
combinedVector = horzcat(evenNumbers,primeNumber');

%Display the combinedVector.
disp("The combined Vector is : ");
disp(combinedVector);

%Create a new matrix combinedMatrix by vertically concatenating identityMatrix and magicSquare.
identityMatrix = eye(2);
combinedMatrix = vertcat(identityMatrix,magicmatrix);

%Display the combinedMatrix.
disp("The combined Matrix is : ");
disp(combinedMatrix);


