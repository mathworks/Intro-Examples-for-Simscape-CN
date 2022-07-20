%% Simscape&trade; Video Example Model Overview
%
% <html>
% <span style="font-family:Arial">
% <span style="font-size:11pt">
% <br>
% <tr><b><u> A cylinder-driven writing mechanism 液压"写作业"装置 </u></b><br>
% <br>
% <tr> 1.  Simscape Multibody&trade; model of the mechanism, driven by (1) ideal position commands, (2) controlled force & torque sources, and (3) a hydraulic cylinder & a motor: 
%          <a href="matlab:cd(fileparts(which('model_writing_arm.slx')));model_writing_arm;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_writing_arm.m'))); edit init_writing_arm.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 由(1)位置指令，(2)受控力及扭矩源，(3)液压缸及马达 驱动的Simcape Multibody模型 <br>
% <br>
% <br>
% <tr><b><u> Parameter estimation in a mass-spring-damper system 质量-弹簧-阻尼系统中的参数估计</u></b><br>
% <br>
% <tr> 1.  Generate synthetic reference data:
%          <a href="matlab:cd(fileparts(which('model_mass_spring_damper_reference.slx')));model_mass_spring_damper_reference;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_mass_spring_damper_reference.m'))); edit init_mass_spring_damper_reference.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 生成参考数据  <br>
% <br>
% <tr> 2.  Use Simulink Design Optimization&trade; (SDO) to estimate unknown parameters:
%          <a href="matlab:cd(fileparts(which('model_mass_spring_damper_estimate.slx')));model_mass_spring_damper_estimate;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_mass_spring_damper_estimate.m'))); edit init_mass_spring_damper_estimate.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 使用Simulink Design Optimization(SDO)估计未知参数  <br>
% <br>
% <br>
% <tr><b><u> Find the curve of fastest descent 寻找最速降线 </u></b><br>
% <br>
% <tr> 1.  Use Simulink Design Optimization&trade; (SDO) to optimize the descent curve:
%          <a href="matlab:cd(fileparts(which('model_spline.slx')));model_spline;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('analytical_solution.mlx'))); edit analytical_solution.mlx;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 使用Simulink Design Optimization(SDO)优化滑降曲线  <br>
% <br>
% <tr> 2.  Generate MATLAB code from SDO:
%          <a href="matlab:cd(fileparts(which('responseOptimization_model_spline.m')));edit responseOptimization_model_spline.m;"> Generated function</a>, 
%          <a href="matlab:cd(fileparts(which('script_optimization.mlx'))); edit script_optimization.mlx;"> Live script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 使用SDO生成MATLAB代码 <br>
% <br>
% <br>
% <tr><b><u> Simple heat exchanger modeling in Simulink and Simscape  使用Simulink和Simscape建模简单热交换器 </u></b><br>
% <br>
% <tr> 1.  Single-unit heat exchanger model in Simulink and Simscape:
%          <a href="matlab:cd(fileparts(which('model_SimpleHeatExchanger_sl_ssc.slx')));model_SimpleHeatExchanger_sl_ssc;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('param_SimpleHeatExchanger.m'))); edit param_SimpleHeatExchanger.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 在Simulink和Simscape中建模单个热交换器单元 <br>
% <br>
% <tr> 2.  Reuse subsystem models to model spatial variation of temperature in a heat exchanger:
%          <a href="matlab:cd(fileparts(which('model_SimpleHeatExchanger_sections.slx')));model_SimpleHeatExchanger_sections;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('param_SimpleHeatExchanger.m'))); edit param_SimpleHeatExchanger.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 重复利用子系统建模热交换器中温度的空间分布 <br>
% <br>
% <br>
% <tr><b><u> Single-action and dual-action ball pumps 单向和双向球类打气筒 </u></b><br>
% <br>
% <tr> 1.  Simscape models of single-action and dual-action ball pumps:
%          <a href="matlab:cd(fileparts(which('modelBallPumpSingleAction.slx')));modelBallPumpSingleAction;"> Single-Action Model</a>, 
%          <a href="matlab:cd(fileparts(which('modelBallPumpDualAction.slx')));modelBallPumpDualAction;"> Dual-Action Model</a>, 
%          <a href="matlab:cd(fileparts(which('paramBallPump.m'))); edit paramBallPump.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 在Simscape中建模单向和双向球类打气筒 <br>
% <br>
% <br>
% <tr><b><u>Galton Board 高尔顿板</u></b><br>
% <br>
% <tr> 1.  One ball and one peg, testing the contact model:
%          <a href="matlab:cd(fileparts(which('Galton_Board_v1.slx')));Galton_Board_v1;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_Galton_Board.m'))); edit init_Galton_Board.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 一球一钉，测试碰撞模型 <br>
% <br>
% <tr> 2.  Assemble many pegs into Galton Board: 
%          <a href="matlab:cd(fileparts(which('Galton_Board_v2.slx')));Galton_Board_v2;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_Galton_Board.m'))); edit init_Galton_Board.m;"> Setup Script</a>
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 将很多钉子组装成高尔顿板  <br>
% <br>
% <tr> 3.  Repeat the simulation and observe the statistical behavior of final position: 
%          <a href="matlab:cd(fileparts(which('Galton_Board_v3.slx')));Galton_Board_v3;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('run_Galton_Board.mlx'))); edit run_Galton_Board.mlx;"> Live Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 重复落球实验并查看落点统计分布  <br>
% <br>
% <br>
% <tr><b><u>Peaucellier–Lipkin linkage 波塞利耶-利普金 连杆机构</u></b><br>
% <br>
% <tr> 1.  Put together a Peaucellier–Lipkin linkage in Simscape Multibody: 
%          <a href="matlab:cd(fileparts(which('Peaucellier_Lipkin.slx')));Peaucellier_Lipkin;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('init_Peaucellier_Lipkin.m'))); edit init_Peaucellier_Lipkin.m;"> Setup Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 在Simscape Multibody中搭建波塞利耶-利普金连杆机构 <br>
% <br>
% <br>
% <tr><b><u>Mass-Spring-Damper System 质量-弹簧-阻尼 系统</u></b><br>
% <br>
% <tr> 1.  Different ways to view Simscape results: 
%          <a href="matlab:cd(fileparts(which('ssc_mass_spring_damper_v1.slx')));ssc_mass_spring_damper_v1;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('script_mass_spring_damper_v1.mlx'))); edit script_mass_spring_damper_v1.mlx;"> Live Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 几种查看Simscape结果的方法 <br>
% <br>
% <tr> 2.  Across & through variables, and mechanical–electrical analogy: 
%          <a href="matlab:cd(fileparts(which('ssc_mass_spring_damper_v2.slx')));ssc_mass_spring_damper_v2;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('script_mass_spring_damper_v2.mlx'))); edit script_mass_spring_damper_v2.mlx;"> Live Script</a>
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 跨量与通量的概念，机电类比  <br>
% <br>
% <tr> 3.  Frequency response (Bode plot) from Simscape model: 
%          <a href="matlab:cd(fileparts(which('ssc_mass_spring_damper_v3.slx')));ssc_mass_spring_damper_v3;">Model</a>, 
%          <a href="matlab:cd(fileparts(which('script_mass_spring_damper_v3.mlx'))); edit script_mass_spring_damper_v3.mlx;"> Live Script</a> 
% <br>
% <tr> &nbsp;&nbsp;&nbsp; 使用Simscape模拟频率响应（波德图）  <br>
% <br>
% </style>
% </style>
% </html>

% Copyright 2021-2022 The MathWorks, Inc.

