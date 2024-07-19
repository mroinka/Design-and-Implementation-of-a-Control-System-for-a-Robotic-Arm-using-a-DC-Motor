% Final PID parameters
Kp = 0.019796; % Final value of Kp
Ki = 1.2956; % Final value of Ki
Kd = 0; % Final value of Kd

% Define the PID controller transfer function
C_pid = pid(Kp, Ki, Kd);

% Closed-loop system
T_closed_loop = feedback(C_pid * P_motor, 1);

% Simulate step response with scaled input
t = 0:0.01:10;
desired_speed_rad_s = 52.36; % Desired final angular speed in rad/s
[y, t] = step(desired_speed_rad_s * T_closed_loop, t);

% Plot the results
figure;
step(desired_speed_rad_s * T_closed_loop, t);
title('Closed-Loop Step Response');
ylabel('Angular Velocity (rad/s)');
xlabel('Time (s)');

% Display the final speed in RPM
final_speed_rpm = y(end) * (60 / (2 * pi));
disp(['Final Speed (RPM): ', num2str(final_speed_rpm)]);

% Calculate performance metrics
info = stepinfo(desired_speed_rad_s * T_closed_loop);

% Display performance metrics
disp(['Settling Time: ', num2str(info.SettlingTime), ' seconds']);
disp(['Maximum Overshoot: ', num2str(info.Overshoot), ' percent']);
disp(['Final Speed (RPM): ', num2str(final_speed_rpm)]);
disp(['Steady-State Error: ', num2str(abs(52.36 - y(end)) / 52.36 * 100), ' percent']);
