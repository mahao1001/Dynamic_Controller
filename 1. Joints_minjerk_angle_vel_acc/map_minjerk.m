clear;clc

load('minjerk.mat');

minjerk(5,:)=0;
minjerk(11,:)=0;
minjerk(17,:)=0;

t = minjerk(1,:);

figure(1)
for i=1:6
    subplot(3,1,1)
    plot(t, minjerk(i+1,:))
    hold on
end
xlabel('Time (s)')
ylabel('Angle (rad)')
legend('Joint 1','Joint 2','Joint 3','Joint 4','Joint 5','Joint 6')
hold off

for i=1:6
    subplot(3,1,2)
    plot(t, minjerk(i+7,:))
    hold on
end
xlabel('Time (s)')
ylabel('velocity (rad/s)')
legend('Joint 1','Joint 2','Joint 3','Joint 4','Joint 5','Joint 6')
hold off

for i=1:6
    subplot(3,1,3)
    plot(t, minjerk(i+13,:))
    hold on
end
xlabel('Time (s)')
ylabel('acceleration (rad/s^{2})')
legend('Joint 1','Joint 2','Joint 3','Joint 4','Joint 5','Joint 6')
hold off