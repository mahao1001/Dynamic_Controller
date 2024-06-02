% 空间点的位置和法向量 求 轴角axang
%

clear;
clc;

load('Position.mat');   % 点的位置  这里不需要，对应上序列即可
load('normals.mat');    % 点的法向量


% 假设 normals 是一个 N x 3 的矩阵，存储了曲面上 N 个点的法向量
% 假设这些点的法向量存储在 normals 变量中

% 定义参考向量
ref_vector = [0, 0, 1];

% 存储每个点的轴角信息
axang_list = zeros(size(normals, 1), 4);  % 创建一个空矩阵，用于存储轴角信息

% 计算每个点的法向量相对于参考向量的轴角
for i = 1:size(normals, 1)
    % 获取当前点的法向量
    n = normals(i, :);
    
    % 计算法向量 n 与参考向量 ref_vector 之间的旋转轴和角度
    % 使用 cross product 计算旋转轴
    ax = cross(ref_vector, n);
    ax = ax / norm(ax);  % 单位化旋转轴
    
    % 使用 dot product 计算旋转角度
    ang = acos(dot(ref_vector, n) / (norm(ref_vector) * norm(n)));
    
    % 构建轴角表示 axang
    axang = [ax, ang];
    
    % 存储到列表中
    axang_list(i, :) = axang;
end

% 显示轴角信息
% disp('每个点的轴角表示 axang:');
% disp(axang_list);


%% 测试
axa1 = [0 0 1 0];
T1 = se3(axa1, "axang" )  % 得到变换矩阵

axa2 = [-0.297637320343357	-0.954679017020289	0	1.32138189721252];
T2 = se3(axa2, "axang" )  % 得到变换矩阵

