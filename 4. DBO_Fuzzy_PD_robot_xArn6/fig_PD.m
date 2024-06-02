clear;clc;

load('f_PD.mat');

t = f_PD(1,:);

subplot(2,1,1)
plot(t,f_PD(2,:),"Color",'r');
xlabel('Time (s)')
ylabel('Kp')
legend('Kp')
subplot(2,1,2)
plot(t,f_PD(3,:),"Color",'b');
xlabel('Time (s)')
ylabel('Kd')
legend('Kd')
