clear;
clc;
[DOF6_xArm6, ArmInfo] = importrobot('DOF6_xArm');  % 加载机器人模型

%% 逆运动学需要的末端位置和姿态
load('mydata.mat')
Position = mydata.positin';
Axang = mydata.axang';

%% 加载逆运动学求出来的关节角度
load('qrt.mat')
num = (1:410:4187);
qrt = qrt(:,num);
joint_angle = qrt(2:end,:);
joint_time = qrt(1,:);
joint_angle(:,1) = zeros(6,1);     % 初始转角为0
joint_angle(:,end) = zeros(6,1);   % 结束转角为0

%%

