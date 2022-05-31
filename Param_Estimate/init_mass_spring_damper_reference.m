%% parameters & data from a reference model

clear
reference = struct;

% mass-spring-damper 1
reference.m1 = 1;     % kg
reference.k1 = (rand()+0.5)*200;   % N/m
reference.b1 = (rand()+0.5)*2;     % N/(m/s)
reference.x1 =  1.0;  % m, initial displacement

% mass-spring-damper 2
reference.m2 = 2;     % kg
reference.k2 = (rand()+0.5)*500;   % N/m
reference.b2 = (rand()+0.5)*5;     % N/(m/s)
reference.x2 = -0.5; % m, initial displacement

return

%% generate synthetic data

open_system('model_mass_spring_damper_reference');
sim('model_mass_spring_damper_reference');

% save the reference data
reference.X1 = X1;
reference.X2 = X2;
save('reference.mat','reference');  % save the reference values
clear X1 X2

% Copyright 2022 The MathWorks, Inc.