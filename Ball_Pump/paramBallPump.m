% set up parameters for ball pump model

clear 

%% Ball
diameter_ball = 235;  % mm
volume_ball = 4/3*pi*(diameter_ball/2)^3;   % mm^3

%% Single Action Pump
stroke_pump1 = 105;   % mm
diameter_pump1 = 22;  % mm
area_pump1 = pi*(diameter_pump1/2)^2;  % mm^2
endvolume_pump1 = area_pump1 * 5;  % mm^3, assume 5 mm space at the end
mass_pump1 = 20;   % g
frequency_pump1 = 1.5;  % Hz, stroke per second
amplitude_pump1 = stroke_pump1 * frequency_pump1 * pi;  % mm/s; so it integrates to full stroke

%% Dual Action Pump
stroke_pump2 = 105;   % mm
diameter1_pump2 = 22;  % mm
diameter2_pump2 = 10;  % mm
area1_pump2 = pi*(diameter1_pump2/2)^2;  % mm^2, cylinder end
area2_pump2 = pi*(diameter1_pump2/2)^2 - pi*(diameter2_pump2/2)^2;  % mm^2, rod end
endvolume1_pump2 = area1_pump2 * 5;  % mm^3, assume 5 mm space at the end
endvolume2_pump2 = area2_pump2 * 5;  % mm^3, assume 5 mm space at the end
mass_pump2 = 20;   % g
frequency_pump2 = 1.5;  % Hz, stroke per second
amplitude_pump2 = stroke_pump2 * frequency_pump2 * pi;  % mm/s; so it integrates to full stroke

%% Check valve
diameter_valve = 2;  % mm
area_valve = pi*(diameter_valve/2)^2;  % mm^2
pdiff_valve = 1000;  % Pa, opening pressure difference

% Copyright 2022 The MathWorks, Inc.