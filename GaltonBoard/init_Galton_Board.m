clear

D_peg = 4;  % [mm]
L_peg = 12; % [mm]

D_ball = 4;  % [mm]
H_ball = 50; % [mm]
x0_ball = 0.2;  % [mm]
x_init = x0_ball*(rand()-0.5);  % [mm] initial pos.

% contact force param
k_scf = 1e6;  % N/m
b_scf = 2e1;  % N/(m/s)
d_scf = 0.1;  % [mm]

% ground
H_ground = 200; % [mm]

% Copyright 2021 The MathWorks, Inc.
