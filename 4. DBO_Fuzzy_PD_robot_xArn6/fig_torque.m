clear; clc;
load('torque.mat')

t = torque(1,:);

subplot(3,2,1)
plot(t,torque(8,:))
hold on
plot(t,torque(2,:))
legend('Adaptive','Ideal')

subplot(3,2,2)
plot(t,torque(9,:))
hold on
plot(t,torque(3,:))
legend('Adaptive','Ideal')

subplot(3,2,3)
plot(t,torque(10,:))
hold on
plot(t,torque(4,:))
legend('Adaptive','Ideal')

subplot(3,2,4)
plot(t,torque(11,:))
hold on
plot(t,torque(5,:))
legend('Adaptive','Ideal')

subplot(3,2,5)
plot(t,torque(12,:))
hold on
plot(t,torque(6,:))
legend('Adaptive','Ideal')

subplot(3,2,6)
plot(t,torque(13,:))
hold on
plot(t,torque(7,:))
legend('Adaptive','Ideal')