
% Define resistor and capacitor values
R_1 = 1e3; 
C_1 = 1e-7; 

% Define the numerator and denominator of the transfer function
num = 1 ;
den = [R_1*C_1 1] ;

% Create the open-loop transfer function
Open_Loop = tf(num, den); 

% Create the closed-loop transfer function using feedback
Closed_Loop = feedback(Open_Loop, 1);

% Define the time range
time = 0:0.01:10;

% Define a step input
Step_input = ones(size(time));

% Plot the step input
plot(time, Step_input, 'r');
hold on

% Plot the step response of the open-loop system
step(Open_Loop);
hold on

% Plot the step response of the closed-loop system
step(Closed_Loop);

% Set the y-axis limit
ylim([0, 1.3]);

% Add legend and labels
legend('Step Input', 'Open Loop System', 'Closed Loop System');
title('Open Loop vs Closed Loop First Order RC Circuit');
xlabel('Time');
ylabel('Response');

% License information
text(8, 0.3, 'Copyright (c) 2024 Mohamed Ezzelrgal. All rights reserved.', 'FontSize', 8);

