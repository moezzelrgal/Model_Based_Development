%% Creating a Simple Function
% Create a new function in MATLAB called mySimpleFunction.
% This function should take two input arguments (numbers) and return their sum.
% Call this function with sample inputs and display the result.

function sum = mySimpleFunction(num1,num2)
  sum = num1 + num2 ;
end

%% Function Inputs and Outputs
% Create a function named calculateCircleArea that takes the radius of a circle as input and returns the area of the circle.
% Call the function with different radii and display the results.

function area = calculateCircleArea (radius)
   area = pi * (radius)^2 ;
end

%% Function with Multiple Outputs
% Create a function named computeStatistics that takes a vector of numbers as input.
% This function should return both the mean and the standard deviation of the input vector.
% Call the function with sample data and display the results.

function [meanVector, deviationVector] = computeStatistics (vector)
  meanVector = mean(vector);
  deviationVector = std(vector);
end


%% Nested Functions
% Create a main function called outerFunction.
% Inside outerFunction, define another function called innerFunction.
% innerFunction should take two inputs, add them, and return the result.
% Call innerFunction from outerFunction and display the result.

function outerFunction
innerFunction
    function sum = innerFunction (num1,num2)
      sum = num1 + num2 ;
    end
end
 
%% Anonymous Functions
%Create an anonymous function that calculates the area of a triangle. The function should take base and height as inputs.
%Call the anonymous function with different base and height values to calculate triangle

function area =  area_of_a_triangle (base, height)
  area = 0.5*base*height ;
end


%% Using Built-in Functions
% Use MATLAB's built-in functions like max, min, and sum in a script.
% Create a vector of numbers and apply these functions to it.
% Submission: Prepare a MATLAB script that includes your solutions to the tasks above. Save the script as a .m file and submit it. Be sure to include comments to explain your code.


mat = [1 2 3 5 6 7];
maxNum = max(mat);
disp("Maximum value is: ");
disp(maxNum);

minNum = min(mat);
disp("Minimum value is: ");
disp(minNum);

sumNumbers = sum(mat);
disp("Sum of Vector is : ");
disp(sumNumbers);

