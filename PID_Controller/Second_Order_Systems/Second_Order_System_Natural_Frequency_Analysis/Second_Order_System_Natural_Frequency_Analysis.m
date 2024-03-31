Zeta = 1; % Damping ratio
Natural_Frequency = 1:1:5; % Natural frequencies to be analyzed
tim_Sim = 0:0.02:20; % Time vector for simulation
Step_Input = ones(size(tim_Sim)); % Step input signal

figure;

%% Loop through each natural frequency value
for i = 1:length(Natural_Frequency)
    % Define numerator and denominator of transfer function
    num = [0, Natural_Frequency(i)^2]; 
    den = [1, 2*Zeta*Natural_Frequency(i), Natural_Frequency(i)^2]; 
    G = tf(num, den); % Create transfer function

    [y, t] = step(G, tim_Sim); % Simulate step response
    subplot(length(Natural_Frequency), 1, i);
    plot(t, Step_Input, 'b', 'LineWidth', 1.5); % Plot step input
    hold on;
    plot(t, y, 'r', 'LineWidth', 1.5); % Plot system response
    hold off;
    xlabel("Time"); % Label x-axis
    ylabel("Response"); % Label y-axis
    title(["Natural Frequency (\omega_n) =", num2str(Natural_Frequency(i))]); % Add title
    legend('Step', 'Response'); % Add legend
end
%%
sgtitle("Effecting of Natural Frequency on System Response (Constant Damping Ratio = 1)"); % Add super title
