% 测试单个向量与选定轴的轴角

clear;
clc;
% 定义参考向量
ref_vector = [0, 0, 1];

 % 获取当前点的法向量
    n = [0	0.5	0.5];
    
    % 计算法向量 n 与参考向量 ref_vector 之间的旋转轴和角度
    % 使用 cross product 计算旋转轴
    ax = cross(ref_vector, n);
    ax = ax / norm(ax);  % 单位化旋转轴
    
    % 使用 dot product 计算旋转角度
    ang = acos(dot(ref_vector, n) / (norm(ref_vector) * norm(n)));
    
    % 构建轴角表示 axang
    axang = [ax, ang]
    T = se3(axang, "axang" )