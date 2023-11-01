% Dimensions & Initial Conditions

%% Rim: define point clouds

D = 45.72; % cm, inner rim diam
d =  1.60; % cm, rim thickness diam

N = 300;  % number of "circles"
n = 20;   % points in each circle

z = sin(2*pi*[1:n]'/n)*d/2;
Z = repmat(z,[N,1]);

r = cos(2*pi*[1:n]'/n)*d/2;
R = D/2 + d/2 + repmat(r,[N,1]);
a = 2*pi*[1:N]/N;
A = reshape(repmat(a,[n,1]),[],1);

X = cos(A).*R; 
Y = sin(A).*R;

% figure(101); clf;
% scatter3(X,Y,Z)

RimPointCloud = [X Y Z];

%% Ball

D_Ball = 24;   % cm
M_ball = 600;  % g

%% Neck

L_neck = 15;  % cm
W_neck = 15;  % cm
D_neck =  d;  % cm

%% Board

H_board = 122;  % cm
W_board = 183;  % cm
D_board =   4;  % cm

%% Net

ang_init = 20;  % deg
ang_eq   = 22;  % deg
k_net = 1e-3;   % N*m/deg
b_net = 5e-4;   % N*m/(deg/s)
l_net =   40;   % cm

kb_net = 100;  % N/m
bb_net =  10;  % N/(m/s)
lb_net = D*pi/3/(360/20);  % cm

%% Contact model

% ball & floor - obtained from ball bounce requriements
kc_ball_floor = 1e5;  % N/m
bc_ball_floor = 5e1;  % N/(m/s)
dc_ball_floor = 5e-3; % m
mu_ball_floor = 0.4; % 1

kc_ball_board = kc_ball_floor;  % N/m
bc_ball_board = bc_ball_floor;  % N/(m/s)
dc_ball_board = dc_ball_floor;  % m
mu_ball_board = 0.4; % 1

kc_ball_rim = kc_ball_floor;  % N/m
bc_ball_rim = bc_ball_floor;  % N/(m/s)
dc_ball_rim = dc_ball_floor;  % m
mu_ball_rim = 0.3; % 1

kc_ball_net = kc_ball_floor/5;  % N/m
bc_ball_net = bc_ball_floor*5;  % N/(m/s)
dc_ball_net = dc_ball_floor/2;  % m
mu_ball_net = 0.5; % 1


%% Initial Condition

z0    = 180 + 30;  % cm, release height
theta = 0;         % deg, angle left-right
w0    = 360 * 0;   % deg/s, back spin

% initial speed & angle
v0  = 7.05;     % m/s
% v0  = 7.40;     % m/s
phi = 50.0;     % deg


%% run simulation
% sim("model_basketball_shooting")