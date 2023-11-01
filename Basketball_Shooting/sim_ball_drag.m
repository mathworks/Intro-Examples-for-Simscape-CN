clear

D_Ball = 24;   % cm
M_ball = 600;  % g

kc_ball_floor = 1e5;  % N/m
bc_ball_floor = 5e1;  % N/(m/s)
dc_ball_floor = 5e-3; % m

Cd_ball = 0.4;  % nearly constant for the Reynolds number range
rho_air = 1.2;  % kg/m3, ~20degC

% initial conditions
theta = 0;         % deg, angle left-right
v0  =  5.0;     % m/s
phi = 45.0;     % deg

open_system("model_basketball_drag")

sim("model_basketball_drag");
