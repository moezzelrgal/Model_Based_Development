% Script to implement transfer functions, root locus, Bode plot, feedback design,
% and step response for DC Motor and Satellite systems

%% Transfer functions
% DC Motor
num_dc_motor = 10 ;
den_dc_motor = [50 60 1001];
dc_motor_tf = tf(num_dc_motor, den_dc_motor);

% Satellite
num_satellite = 1;
den_satellite = [2.5 1.17 0];
satellite_tf = tf(num_satellite, den_satellite);

% Display transfer functions
disp("DC Motor Transfer Function:");
disp(dc_motor_tf);
disp("Satellite Transfer Function:");
disp(satellite_tf);

%% Root locus plot for both systems

figure;
rlocus(dc_motor_tf, satellite_tf);
title('Root Locus for DC Motor and Satellite Systems');
legend('DC Motor', 'Satellite');

%% Bode plot for both systems
% DC Motor
figure;
margin(dc_motor_tf);
title('Bode Plot for DC Motor');
% Satellite
figure;
margin(satellite_tf);
title('Bode Plot for Satellite');

% Step input and time simulation
time_s = 0:0.01:30;
step_input = ones(size(time_s));

%% Feedback
% Feedback design for DC Motor
dc_feedback = feedback(dc_motor_tf, 1);
figure;
plot(time_s, step_input, 'r');
hold on
step(dc_feedback);
title('Step Response for DC Motor');
legend('Step Input', 'DC Motor');
ylim([-0.2, 1.1]);

% Feedback design for Satellite
satellite_feedback = feedback(satellite_tf, 1);
figure;
plot(time_s, step_input, 'r');
hold on
step(satellite_feedback);
title('Step Response for Satellite');
legend('Step Input', 'Satellite');

%% License
% License: MIT License
% Copyright (c) 2024 Mohamed Ezzelrgal


