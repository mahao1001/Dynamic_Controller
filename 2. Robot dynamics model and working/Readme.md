This folder is mainly used to control the 6-DOF robot and complete the surface grinding operation
1. The Simulink model of the robot is established: DOF6_xArm.slx
2. The robot needs to be loaded during this run, using load_robot.m
3. load_robot.m will load the robot model, including the .mat files to be used. Only after loading these data can they be used in Simulink later

Results
1. First, the forward kinematics and inverse kinematics of the robot, these two are put together: DOF6_xArm_FKIK.slx
In this forward and inverse kinematics, the input of the robot joint must be calculated. In particular, the data is converted into time series input
Workpiece surface data processing map_data.m output save mydata.m is a structure containing the position, normal vector and axis angle of 41 points

2. Inverse kinematics tracking DOF6_xArm_FKIK.slx
The above axis angle calculation is not easy to use, I don’t know what the problem is.
Directly give a stable axis angle [1 0 0 pi] just vertically downward. Sine wave input
X = 0.15*sin(pi/5*t)+0.3
Y = 0.25*sin(pi/5*t+pi/2)+0.25
Z = 0.02*sin(pi/5*t)+0.3
Frequency pi/5 means that it takes 10 seconds to complete a circle of 2*pi
The data is saved in qrt.mat, which is the sampled joint data 7*N data, and the first line is time

3. Run inverse dynamics DOF6_xArm_ForwardDynamic.slx
qrt.mat is used, the first line is time, and 2-7 are the angle values ​​of 6 joints. In order to save calculation time, partial data, about 10 points, are used.
Let the initial and final angles be 0, so that the torque can be calculated through inverse dynamics.
Use minjerk to calculate the angle value
The inverse kinematics input is the angle value of the 6 joints, and the torque required to achieve such an angle value is calculated.
The calculated torque is used to drive the model to move, which is integrated into the angular acceleration, which is then integrated into the angle.
The calculated torque drives the physical model, and the sensor obtains qm, the measured value of the angle.
Draw and compare three signals: the input angle value, the angle obtained by driving the digital model, and the angle obtained by driving the physical model.
You can also draw the measured angular velocity dqm.

4. Calculate torque PD controller DOF6_xArm_PD_Controller.slx
Calculate torque to drive the robot
The input is still the angle of the joint, here we need the corresponding angle q, angular velocity, qd, angular acceleration qdm
Set the control law: T = M (qdd + Kd(qd-qdm) + Kp(q-qm)) +C+ G
Then use the torque obtained to drive the robot and get the measured joint output of the robot
Compare the input joint angle and the measured joint angle.