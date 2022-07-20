clear

%% model inputs

% load character to write
load('data_zuoye.mat');
letter = struct;
letter.x = data_zuoye(:,1);
letter.y = data_zuoye(:,2);

% plot the character
figure(101); clf
scatter(letter.x,letter.y);
axis([0,2,0,1])

% multibody parameter
d  = 10;   % [mm] diameter of cylinder
l  = 200;  % [mm] length of cylinder
lc = l * 3/4;  % [mm] canvas size [2lc*lc]

% scale onto writing board
letter.x = (letter.x - 1) * lc;
letter.y = (letter.y + 0) * lc;
letter.z = letter.x * 0;
letter.xyz = [letter.x letter.z letter.y];  % for multibody spline visual

% start from [0 0 0]
letter.x = [0; letter.x];
letter.y = [0; letter.y];
letter.z = [0; letter.z];

% animate character
figure(102); clf;
h1 = animatedline('Color',[0 0.4 0.7],'LineWidth',3);
box on;
grid on;
axis([-lc,lc,0,lc]);
for k = 2:length(letter.x)
    addpoints(h1,letter.x(k),letter.y(k));
    drawnow
    pause(2e-2)
end

% distance between path points
letter.d = letter.x * 0;
letter.d(2:end) = sqrt(diff(letter.x).^2 + diff(letter.y).^2);

%% rotation & position command

act_cmd = struct;

% make time interval proportional to distance
act_cmd.time = cumsum(letter.d);
act_cmd.time = act_cmd.time * 20 / act_cmd.time(end);  % 20 seconds to write

% angle and length calculation
act_cmd.pos = sqrt(letter.x.^2 + (letter.y+l).^2) - l;
act_cmd.rot = atan(-letter.x ./ (letter.y+l));

% % check in polar coordinates
% figure(103); clf;
% polarplot(act_cmd.rot+pi/2,act_cmd.pos+l,'.')
% thetalim([40 140])
% rlim([0 l+lc])

%% simulation setting

x0 = 0;  % initial position
tsim = act_cmd.time(end);  % duration

% Copyright 2022 The MathWorks, Inc.
