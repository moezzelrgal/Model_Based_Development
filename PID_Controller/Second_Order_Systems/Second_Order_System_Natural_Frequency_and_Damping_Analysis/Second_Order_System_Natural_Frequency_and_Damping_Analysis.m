Wn = [1 1 1 2 2 2 4 4 4]; % Natural frequencies
Zeta = [0.1 0.5 0.9 0.1 0.5 0.9 0.1 0.5 0.9]; % Damping ratios
time_sim = 0:0.01:10; % Time vector for simulation
step_input = ones(size(time_sim)); % Step input signal

%% Loop through each natural frequency and each Damping Ration values
for i = 1:length(Zeta)
    num = [0 Wn(i)^2]; % Numerator of transfer function
    den = [1 2*Zeta(i)*Wn(i) Wn(i)^2]; % Denominator of transfer function

    G = tf(num, den); % Create transfer function
    [y, t] = step(G, time_sim); % Simulate step response

    subplot(3, 3, i);
    plot(t, step_input, 'b', 'LineWidth', 1.5); % Plot step input
    hold on;
    plot(t, y, 'r', 'LineWidth', 1.5); % Plot system response
    hold off;
    xlabel("Time"); % Label x-axis
    ylabel("Response"); % Label y-axis
    legend('Step', 'Response'); % Add legend
end

%% Add specific titles to subplots for clarity
subplot(3, 3, 1);
title("(\omega_n) = 1, (\zeta) = 0.1 (Oscillating || Unstable)"); % Add title
subplot(3, 3, 2);
title("(\omega_n) = 1, (\zeta) = 0.5 (Under damping || poles not real and not equal)"); % Add title
subplot(3, 3, 3);
title("(\omega_n) = 1, (\zeta) = 0.9 (Critical Damping || poles real and equal)"); % Add title
subplot(3, 3, 4);
title("(\omega_n) = 2, (\zeta) = 0.1 (Under damping || poles not real and not equal)"); % Add title
subplot(3, 3, 5);
title("(\omega_n) = 2, (\zeta) = 0.5 (Under damping || poles not real and not equal)"); % Add title
subplot(3, 3, 6);
title("(\omega_n) = 2, (\zeta) = 0.9 (Critical Damping || poles real and equal)"); % Add title
subplot(3, 3, 7);
title("(\omega_n) = 4, (\zeta) = 0.1 (Under damping || poles not real and not equal)"); % Add title
subplot(3, 3, 8);
title("(\omega_n) = 4, (\zeta) = 0.5 (Under damping || poles not real and not equal)"); % Add title
subplot(3, 3, 9);
title("(\omega_n) = 4, (\zeta) = 0.9 (Critical Damping || poles real and equal)"); % Add title

%% Add super title without license statement
sgtitle("Effect of Natural Frequency and Damping Ratio on System Response");

%% Add license statement at the bottom of the figure
license_text = sprintf("Licensed under the MIT License, Copyright (c) 2022 Mohamed Ezzelrgal");
text(0.5, -0.05, license_text, 'HorizontalAlignment', 'center', 'FontSize', 8, 'Interpreter', 'none');
%% License statement
disp("Copyright (c) 2022 Mohammed Ezzelrgal");
disp("Licensed under the MIT License");