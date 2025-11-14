% Load data
data = readtable('torque_sweep_48V.csv');

% Create figure with 3 subplots
figure('Position', [100, 100, 1200, 400]);

% Plot 1: Torque-Speed Curve (Most Important!)
subplot(1,3,1)
plot(data.torque, data.speed_rpm, 'b-o', 'LineWidth', 2, 'MarkerSize', 4)
xlabel('Motor Torque [Nm]')
ylabel('Speed [RPM]')
title('Torque-Speed Characteristic')
grid on

% Plot 2: Current-Speed
subplot(1,3,2)
plot(data.current, data.speed_rpm, 'r-o', 'LineWidth', 2, 'MarkerSize', 4)
xlabel('Current [A]')
ylabel('Speed [RPM]')
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