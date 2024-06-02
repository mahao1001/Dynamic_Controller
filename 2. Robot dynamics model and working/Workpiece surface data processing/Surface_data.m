close all;
clear; clc;

%% 绘制一个自由曲面，获取XYZ坐标点即可
[X,Y] = meshgrid(-200:10:200);
Z =Y.*sin(X/50) - X.*cos(Y/50);
s = surf(X,Y,Z,'FaceAlpha',1);
axis equal; % 设置坐标轴比例一致

%% 把刚才的曲面采样多个点，分别计算各点的法向量

% 在曲面上采样点
sample_points = [X(:), Y(:), Z(:)];

% 估计法向量
normals = zeros(size(sample_points, 1), 3);

for i = 1:size(sample_points, 1)
    point = sample_points(i, :);
    % 使用局部的邻近点来估计曲面法向量
    [neighbor_indices, neighbor_dists] = knnsearch(sample_points, point, 'K', 10);
    neighbors = sample_points(neighbor_indices, :);
    % 计算邻近点的协方差矩阵
    cov_matrix = cov(neighbors);
    % 通过特征值分解估计法向量
    [eigenvectors, ~] = eig(cov_matrix);
    normal = eigenvectors(:, 1)'; % 选择最小特征值对应的特征向量作为法向量

    %% 判断法向量的方向 如果没有判断，就会出现法向量出现在曲面两侧的现象
    reference_vector = [0, 0, 1]; % 选择一个参考向量
    dot_product = dot(normal, reference_vector);
    if dot_product < 0
        normal = -normal; % 调整法向量朝向
    end
    
    normals(i, :) = normal;
end

%% 绘制法向量
hold on
quiver3(sample_points(:, 1), sample_points(:, 2), sample_points(:, 3), normals(:, 1), normals(:, 2), normals(:, 3), 'r');
