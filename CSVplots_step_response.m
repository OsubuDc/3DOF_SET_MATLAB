% Load step response data
data = readtable('/home/oskar/3DOF_SET_MATLAB/step_response_48V.csv');

% Create figure with 3 subplots
figure('Position', [100, 100, 1200, 400]);

% Plot 1: Speed vs Time
subplot(1,3,1)
plot(data.time*1000, data.speed_rpm, 'b-', 'LineWidth', 2)
xlabel('Time [ms]')
ylabel('Speed [RPM]')
title('Speed Response')
grid on
ylim([0 max(data.speed_rpm)*1.1])

% Plot 2: Current vs Time
subplot(1,3,2)
plot(data.time*1000, data.current, 'r-', 'LineWidth', 2)
xlabel('Time [ms]')
ylabel('Current [A]')
title('Current Response')
grid on

% Plot 3: Torque vs Time
subplot(1,3,3)
plot(data.time*1000, data.torque, 'g-', 'LineWidth', 2)
xlabel('Time [ms]')
ylabel('Torque [Nm]')
title('Torque Response')
grid on

sgtitle('Step Response @ 48V')

% Create figure with 3 subplots
figure('Position', [100, 100, 1200, 400]);

% Plot 1: Torque-Speed Curve (Most Important!)
subplot(1,3,1)
plot(data.speed_rpm,data.torque, 'b-o', 'LineWidth', 2, 'MarkerSize', 4)
xlabel('Speed [RPM]')
ylabel('Motor Torque [Nm]')
title('Torque-Speed Characteristic')
grid on

% Plot 2: Current-Speed
subplot(1,3,2)
plot(data.speed_rpm,data.current, 'r-o', 'LineWidth', 2, 'MarkerSize', 4)
xlabel('Speed [RPM]')
ylabel('Current [A]')
title('Current vs Speed')
grid on

% Plot 3: Current-Torque
subplot(1,3,3)
plot(data.torque, data.current, 'g-o', 'LineWidth', 2, 'MarkerSize', 4)
xlabel('Motor Torque [Nm]')
ylabel('Current [A]')
title('Current vs Torque')
grid on

% Add overall title
sgtitle('Motor Characteristic Curves @ 48V')

