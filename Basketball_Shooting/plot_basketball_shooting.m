clear

%% load data - no spin
load simDataPhi0.mat; 

%% Plot shots
figure(100); clf;
tiledlayout("flow");
for i = 1:length(v0_vec)
    nexttile;
    title("Release Angle "+num2str(phi_vec(i))+" deg")
    hold on
    index = makes_list{i}==1;  % makes
    scatter(v0_list{i}(index), phi_list{i}(index),40,[0 0 0],'o')
    index = makes_list{i}==0;  % misses
    scatter(v0_list{i}(index), phi_list{i}(index),40,[0 0 0],'x')
    hold off
    % xlabel('Initial Speed (m/s)')
    % ylabel('Release Angle (deg)')
    box on
    xlim([-0.3 0.3]+ v0_vec(i))
    ylim([-4.0 4.0]+phi_vec(i))
end

%% Summary
figure(1000); clf;
hold on
scatter(phi_vec,make_pct);
box on
grid on
xlabel('Release Angle (deg)')
ylabel('Shooting Percentage')
xlim([44 66])
ylim([40 85])

%% load data - with spin
load simDataPhi2.mat; 

%% Plot shots
figure(102); clf;
tiledlayout("flow");
for i = 1:length(v0_vec)
    nexttile;
    title("Release Angle "+num2str(phi_vec(i))+" deg")
    hold on
    index = makes_list{i}==1;  % makes
    scatter(v0_list{i}(index), phi_list{i}(index),40,[0 0 0],'o')
    index = makes_list{i}==0;  % misses
    scatter(v0_list{i}(index), phi_list{i}(index),40,[0 0 0],'x')
    hold off
    % xlabel('Initial Speed (m/s)')
    % ylabel('Release Angle (deg)')
    box on
    xlim([-0.3 0.3]+ v0_vec(i))
    ylim([-4.0 4.0]+phi_vec(i))
end

%% Summary
figure(1000);
scatter(phi_vec,make_pct);

box on
grid on
xlabel('Release Angle (deg)')
ylabel('Shooting Percentage')
xlim([44 66])
ylim([40 85])
legend("No Backspin","With Backspin",'Location','southeast')

hold off
%% 
