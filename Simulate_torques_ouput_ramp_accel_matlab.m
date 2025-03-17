clc;

% Run simulation
out = sim('simulate_torques_workspace_ramp_accel');

% Extract time and torque values
Time = out.T1.Time; % Time stamps
T1 = out.T1.Data;   % Torque for joint 1
T2 = out.T2.Data;   % Torque for joint 2
T3 = out.T3.Data;   % Torque for joint 3

% Compute total required torque
T_total_required = T1 + T2 + T3;

% Create table for structured output
Torque_Table = table(Time, T1, T2, T3, T_total_required,'VariableNames', {'Time', 'T1', 'T2', 'T3', 'Total_Torque'});

% Display the table
disp('Torque Simulation Results Ramp Acceleration:');
disp(Torque_Table);


