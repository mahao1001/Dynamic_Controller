% 得出一个想要的数据

clear; 
clc;

load('sample_points.mat')
load('normals.mat')
load('axang_list.mat')

surf_data = struct('sample_points',sample_points,'normals',normals,'axang_list',axang_list);
mydata = struct('positin',surf_data.sample_points(1641:end,:), ...
    'normals',surf_data.normals(1641:end,:), ...
    'axang',surf_data.axang_list(1641:end,:));

save('surf_data.mat', 'surf_data');
save('mydata.mat', 'mydata');   % 保存41个点的 位置 法向量 轴角