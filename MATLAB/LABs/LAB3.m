clear;
clc;

%% Cell Arrays
% Create a cell array containing various data types (numbers, text, and variables).
% Access and display specific elements within the cell array.

cellArray = {12 , 'Mohamed', [1 2 3]};
disp(cellArray);
disp(cellArray(2));

%% Structures
% Create a simple structure to store information about a person (name, age, city).
% Access and display the structure fields.

person.Name = 'Mohamed';
person.Age = 20 ;
person.City = 'Cairo' ;
disp(person);

%% Character Data
% Create a character array with your name.
% Concatenate your name with another character array.
% Display the results.

name1 = 'Mohammed ';
name2 = 'Ezzelrgal';
conName = [name1  name2] ;
disp(conName);

%% Conditional Statements (If)
% Write an if statement that checks if a number is even or odd.
% Display a message based on the result of the if statement.

number = input("Please enter the number: ");

if rem(number,2)==0
    fprintf('%d is an even number\n',number);
else
    fprintf('%d is an odd number\n',number);
end

%% For Loops
% Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
% Display the numbers within the loop.
num = 1;
for num = num:10
    disp(num)
    
end

%% Basic Plotting
% Generate data for a simple plot (e.g., a sine wave).
% Plot the data with proper labels and a legend.

x = linspace(0,2*pi,100);
y = sin(x);
plot(x,y,'r');
xlabel('x-axis');
ylabel('y-axis');
title('Sin Wave Function');
legend('sin wave');



