clear; clc;
load('input.mat')
load('output.mat')

t = input(1,:);

e1 = output(2,:)-input(2,:);
e2 = output(3,:)-input(3,:);
e3 = output(4,:)-input(4,:);
e4 = output(5,:)-input(5,:);
e5 = output(6,:)-input(6,:);
e6 = output(7,:)-input(7,:);

%%
ISEe1 = sum(e1.^2)/ length(input(1,:));
ISEe2 = sum(e2.^2)/ length(input(1,:));
ISEe3 = sum(e3.^2)/ length(input(1,:));
ISEe4 = sum(e4.^2)/ length(input(1,:));
ISEe5 = sum(e5.^2)/ length(input(1,:));
ISEe6 = sum(e6.^2)/ length(input(1,:));
%%
IAEe1 = sum(abs(e1))/ length(input(1,:));
IAEe2 = sum(abs(e2))/ length(input(1,:));
IAEe3 = sum(abs(e3))/ length(input(1,:));
IAEe4 = sum(abs(e4))/ length(input(1,:));
IAEe5 = sum(abs(e5))/ length(input(1,:));
IAEe6 = sum(abs(e6))/ length(input(1,:));


%%
ISE = sum(e1.^2+e2.^2+e3.^2+e4.^2+e5.^2+e6.^2) / length(input(1,:))
IAE = sum(abs(e1)+abs(e2)+abs(e3)+abs(e4)+abs(e5)+abs(e6))/ length(input(1,:))

