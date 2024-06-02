clear; clc;
load('input.mat')
load('output.mat')
t = input(1,:);

subplot(3,2,1)
plot(t,output(2,:))
hold on
plot(t,input(2,:))
legend('q1m','q1')

subplot(3,2,2)
plot(t,output(3,:))
hold on
plot(t,input(3,:))
legend('q1m','q1')

subplot(3,2,3)
plot(t,output(4,:))
hold on
plot(t,input(4,:))
legend('q1m','q1')

subplot(3,2,4)
plot(t,output(5,:))
hold on
plot(t,input(5,:))
legend('q1m','q1')

subplot(3,2,5)
plot(t,output(6,:))
hold on
plot(t,input(6,:))
legend('q1m','q1')

subplot(3,2,6)
plot(t,output(7,:))
hold on
plot(t,input(7,:))
legend('q1m','q1')