% First order System Analysis

%% Define System parameters
num = 1 ;
den = [1 1];

System = tf(num,den) ;

%% Define Time Simulation
t = 0:0.01:50;
step_input = ones(size(t));

%% Dfine P controller parameter (Kp)

Ki_Values = [0.001 0.01 0.1 1 10 60 100];

%% Plot Open Loop System with Step input
figure;

Open_Loop = step(System,t);

plot(t,Open_Loop,'b--','LineWidth',1.5);
hold on
plot(t,step_input,'g-','LineWidth',1.5);
hold on

%% Define Feedback for System and plot its response

close_loop_no_controller = step(System/(1+System),t) ;

plot(t,close_loop_no_controller,'r-','LineWidth',1.5);

hold on

for i = 1:length(Ki_Values)
  
    ki = Ki_Values(i);
    I_Controller = tf([0 ki],[1 0]);
    SystemwithIcontroller = series(I_Controller,System) ;
    close_loop_with_controller = feedback(SystemwithIcontroller,1);
    [System_With_Controller,~] = step(close_loop_with_controller,t);
    plot(t,System_With_Controller,'LineWidth',1.5) ;
    hold on
end

%% Define Visualization of Response
xlim([0 50]);
title("Effect of Ki on System Response (1 st order system)");
xlabel("Time");
ylabel("Response");
legend(['Step Input';'Open Loop';'Closed Loop with out controller';cellstr(num2str(Ki_Values'))],'Location','best') ;

grid on ;

% Add License
license_text = 'Licensed by: Mohamed Ezzelrgal';
text(7,0.2,license_text,'FontSize',8,'FontWeight','bold');

