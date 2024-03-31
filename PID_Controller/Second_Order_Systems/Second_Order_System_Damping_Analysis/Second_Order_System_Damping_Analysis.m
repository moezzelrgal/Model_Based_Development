Wn = 1; % Natural frequency
Zeta_Values = [0 0.1 0.3 0.5 0.7 0.9 1 1.2]; % Array of damping ratios
time_sim = 0:0.01:20; % Time vector for simulation
Step_Input = ones(size(time_sim)); % Step input signal

figure;

%% Loop through each damping ratio value
for i = 1:length(Zeta_Values)
    % Define numerator and denominator of transfer function
    num = [0 Wn^2]; 
    den = [1 2*Zeta_Values(i)*Wn Wn^2]; 
    G = tf(num, den); % Create transfer function
    [y, t] = step(G, time_sim); % Simulate step response
    subplot(length(Zeta_Values), 1, i); % Create subplot
    plot(t, Step_Input, 'b', 'LineWidth', 1.5); % Plot step input
    hold on;
    plot(t, y, 'r', 'LineWidth', 1.5); % Plot system response
    hold off;
    xlabel("Time"); % Label x-axis
    ylabel("Response"); % Label y-axis
    title(["Damping Ration (\zeta)", num2str(Zeta_Values(i))]); % Add title
    legend('Step', 'Response'); % Add legend
end

%% Add specific titles to subplots for clarity
subplot(length(Zeta_Values), 1, 1);
title(["Damping Ration (\zeta)  Oscillation ", num2str(0)]);
subplot(length(Zeta_Values), 1, 2);
title(["Damping Ration (\zeta)  Under Damped ", num2str(0.1)]);
subplot(length(Zeta_Values), 1, 3);
title(["Damping Ration (\zeta)  Under Damped ", num2str(0.3)]);
subplot(length(Zeta_Values), 1, 4);
title(["Damping Ration (\zeta)  Under Damped ", num2str(0.5)]);
subplot(length(Zeta_Values), 1, 5);
title(["Damping Ration (\zeta)  Under Damped ", num2str(0.7)]);
subplot(length(Zeta_Values), 1, 6);
title(["Damping Ration (\zeta)  Under Damped ", num2str(0.9)]);
subplot(length(Zeta_Values), 1, 7);
title(["Damping Ration (\zeta)  Critical Damped ", num2str(1)]);
subplot(length(Zeta_Values), 1, 8);
title(["Damping Ration (\zeta)  Over Damped ", num2str(1.2)]);

sgtitle("Effecting of Damping Ratio on System Response (Constant Natural Frequency)"); % Add super title
