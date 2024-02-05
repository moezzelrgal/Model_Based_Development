%% while loop

%% MATLAB script that uses a while loop to print even numbers from 2 to 20.
clear;
clc;

number = 0 ;

while number <= 20
    if rem(number,2) == 0 
        disp(number);   
    end
    number = number + 1;
end

%% a script that calculates the factorial of a given number using a while loop. Prompt the user for input.

clear;
clc;

number = input("PLease enter the number: ");
factorial_result = 1;
while number > 0
    factorial_result = factorial_result * number;
    number = number -1  ;   
end
fprintf('Factorial of number is: %d\n',factorial_result);


%% Switch Statement

%% script to calculate the cost of a trip based on the mode of transportation. Use a switch statement to handle different cases. The modes are: car, train, bus, and airplane. 
%Each mode has a different cost per mile.

% Clear the command window and workspace
clear;
clc;

% Display a greeting message and the available modes of transportation

disp("Hello");
disp("The modes are:");
disp("1- car");
disp("2- train");
disp("3- bus");
disp("4- airplane");

% Prompt the user to choose the mode of transportation and enter the number of miles

Mode = input("Please choose the number of Mode of Transportation: ");
miles = input("Please enter the number of miles: ");

% Use a switch statement to handle different cases based on the chosen mode

switch Mode
    case 1 
       cost = miles * 2;  % Cost per mile for car is $2
       fprintf('The cost of trip is: $%d\n', cost);
    case 2
       cost = miles * 3;  % Cost per mile for train is $3
       fprintf('The cost of trip is: $%d\n', cost);
    case 3
       cost = miles * 1;  % Cost per mile for bus is $1
       fprintf('The cost of trip is: $%d\n', cost);
    case 4
       cost = miles * 5;  % Cost per mile for airplane is $5
       fprintf('The cost of trip is: $%d\n', cost);
    otherwise
       disp("Invalid mode of transportation. Please choose a number from 1 to 4.");
end


%% a script that translates a color code into its corresponding name using a switch statement. Prompt the user for input and handle at least five different color codes.

% Clear the command window and any existing variables
clear;
clc;

% Display a welcome message and available color codes
disp("Welcome!");
disp("Our color codes are:");
disp("1- 01R (Red)");
disp("2- 21B (Blue)");
disp("3- 31G (Green)");
disp("4- 51Y (Yellow)");
disp("5- 71W (White)");

% Prompt the user to choose a color code
color_code = input("Please choose the number of the color code you want to know: ");

% Use a switch statement to translate the color code into its corresponding name
switch color_code
    case 1
        disp("The color is: Red");
    case 2
        disp("The color is: Blue");
    case 3 
        disp("The color is: Green");
    case 4 
        disp("The color is: Yellow");
    case 5 
        disp("The color is: White");
    otherwise
        disp("Invalid input. Please choose a number from 1 to 5.");
end