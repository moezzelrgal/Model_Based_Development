classdef Robot_Arm_Simulation1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure               matlab.ui.Figure  % Main UI figure
        keySwitch              matlab.ui.control.Switch  % Switch control
        keySwitchLabel         matlab.ui.control.Label   % Label for the switch
        StartSimulationButton  matlab.ui.control.Button  % Button to start simulation
        L2EditField            matlab.ui.control.NumericEditField  % Numeric edit field for arm length 2
        L2EditFieldLabel       matlab.ui.control.Label  % Label for arm length 2
        L1EditField            matlab.ui.control.NumericEditField  % Numeric edit field for arm length 1
        L1EditFieldLabel       matlab.ui.control.Label  % Label for arm length 1
        UIAxes                 matlab.ui.control.UIAxes  % UI axes for plotting
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: StartSimulationButton
        function StartSimulationButtonPushed(app, event)
            % Turn off hold in UIAxes
            hold(app.UIAxes,"off")

            % Get arm lengths from edit fields
            Arm1_Length = app.L1EditField.Value; % Length of arm 1
            Arm2_Length = app.L2EditField.Value; % Length of arm 2

            % Define range of angles for theta1 and theta2
            theta1 = linspace(0,90,1000);
            theta2 = linspace(0,180,1000);

            % Calculate x and y coordinates for each angle
            x1 = Arm1_Length * cosd(theta1);
            x2 = x1 + Arm2_Length * cosd(theta1+theta2);
            y1 = Arm1_Length * sind(theta1);
            y2 = y1 + Arm2_Length * sind(theta1 + theta2);

            % Plot arm segments
            p1 = plot(app.UIAxes,[0 x1],[0 y1]); % Arm 1
            hold(app.UIAxes,"on")
            p2 = plot(app.UIAxes,[x1 x2],[y1 y2]); % Arm 2

            % Set axes limits
            xlim(app.UIAxes,[-Arm1_Length*2,Arm1_Length*2]);
            ylim(app.UIAxes,[-Arm1_Length*2,Arm1_Length*2]);

            % Animate the motion of the robot arm
            for i = 1:4:length(theta1)
                delete(p1); % Delete previous plot
                delete(p2);
                % Plot current position of the arm
                p1 = plot(app.UIAxes,[0 x1(i)],[0 y1(i)],'LineWidth',4,'Color','r','Marker','o');
                p2 = plot(app.UIAxes,[x1(i) x2(i)],[y1(i) y2(i)],'LineWidth',4,'Color','k','Marker','pentagram');
                
                drawnow % Update the plot
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Robot Arm Simulation')
            xlabel(app.UIAxes, 'x-axis')
            ylabel(app.UIAxes, 'y-axis')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.XColor = [0.3216 0.0275 0.0824];
            app.UIAxes.YColor = [0.3412 0.0235 0.0235];
            app.UIAxes.ZColor = [0.149 0.149 0.149];
            app.UIAxes.GridColor = [0.149 0.149 0.149];
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [36 97 570 372];

            % Create L1EditFieldLabel
            app.L1EditFieldLabel = uilabel(app.UIFigure);
            app.L1EditFieldLabel.HorizontalAlignment = 'right';
            app.L1EditFieldLabel.FontWeight = 'bold';
            app.L1EditFieldLabel.FontColor = [0.6353 0.0784 0.1843];
            app.L1EditFieldLabel.Position = [191 35 25 22];
            app.L1EditFieldLabel.Text = 'L1';

            % Create L1EditField
            app.L1EditField = uieditfield(app.UIFigure, 'numeric');
            app.L1EditField.Limits = [0 20];
            app.L1EditField.Position = [231 35 100 22];

            % Create L2EditFieldLabel
            app.L2EditFieldLabel = uilabel(app.UIFigure);
            app.L2EditFieldLabel.HorizontalAlignment = 'right';
            app.L2EditFieldLabel.FontWeight = 'bold';
            app.L2EditFieldLabel.FontColor = [0 0 1];
            app.L2EditFieldLabel.Position = [412 35 25 22];
            app.L2EditFieldLabel.Text = 'L2';

            % Create L2EditField
            app.L2EditField = uieditfield(app.UIFigure, 'numeric');
            app.L2EditField.Limits = [0 10];
            app.L2EditField.Position = [452 35 100 22];

            % Create StartSimulationButton
            app.StartSimulationButton = uibutton(app.UIFigure, 'push');
            app.StartSimulationButton.ButtonPushedFcn = createCallbackFcn(app, @StartSimulationButtonPushed, true);
            app.StartSimulationButton.FontWeight = 'bold';
            app.StartSimulationButton.Position = [36 61 107 23];
            app.StartSimulationButton.Text = 'Start Simulation';

            % Create keySwitchLabel
            app.keySwitchLabel = uilabel(app.UIFigure);
            app.keySwitchLabel.HorizontalAlignment = 'center';
            app.keySwitchLabel.FontWeight = 'bold';
            app.keySwitchLabel.FontColor = [1 0.0745 0.651];
            app.keySwitchLabel.Position = [78 1 25 22];
            app.keySwitchLabel.Text = 'key';

            % Create keySwitch
            app.keySwitch = uiswitch(app.UIFigure, 'slider');
            app.keySwitch.FontWeight = 'bold';
            app.keySwitch.FontColor = [1 0.0745 0.651];
            app.keySwitch.Position = [67 26 45 20];
            app.keySwitch.Value = 'On';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Robot_Arm_Simulation1

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
