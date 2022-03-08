% set up parameters for heat exchanger example

clear

%% Define parameters and boundary conditions

h = 1000;  % W/m^2-K, heat transfer coefficient
A = 100;   % m^2, heat transfer area
rho = 800; % kg/m^3, density
V = 10;    % m^3, tube volume
Cp = 2;    % kJ/kg-K, specific heat

Ts = 150;  % degC
Ti = 80;   % degC
mdot = 20; % kg/s

T0 = 75;   % degC, initial tube temperature

N = 3;  % divide model into multiple sections


% Copyright 2022 The MathWorks, Inc.