%% parameters of fitting model

clear
load('reference.mat')

estimates_m1 = reference.m1;  % known
estimates_k1 = 10;   % N/m, initial guess
estimates_b1 = 1;    % N/(m/s), initial guess
estimates_x1 = reference.x1;  % known

estimates_m2 = reference.m2;  % known
estimates_k2 = 10;   % N/m, initial guess
estimates_b2 = 1;    % N/(m/s), initial guess
estimates_x2 = reference.x2;  % known

open_system('model_mass_spring_damper_estimate');

% Copyright 2022 The MathWorks, Inc.