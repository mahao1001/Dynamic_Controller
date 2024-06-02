Adaptive Fuzzy PD Controller for 6-DOF Collaborative Robot Manipulator Trajectory Tracking

This repository contains the code and related materials for the paper titled "Adaptive Fuzzy PD Controller for 6-DOF Collaborative Robot Manipulator Trajectory Tracking." The project focuses on developing an improved Dung Beetle Optimization (DBO) algorithm, integrating it with fuzzy logic to create a robust and adaptive PD controller for precise trajectory tracking of a 6-DOF collaborative robot manipulator.

The repository is organized into 5 main directories, each containing specific components of the research:

0. Improved_DBO Algorithm
    - This folder contains the implementation of the improved DBO algorithm. 
    - It includes strategies for enhancing the DBO algorithm and results from solving four engineering problems.
    - The effectiveness of the improved algorithm is demonstrated through comparative analysis.

1. Joints_minjerk_angle_vel_acc
    - This directory includes the solution of inverse kinematics for a real-world task.
    - It provides the joint angles, angular velocities, and angular accelerations calculated using the minimum jerk method, ensuring the trajectory is third-order differentiable.
    - The files illustrate the smooth and continuous trajectory generation for the robot's joints.

2. Robot dynamics model and working
    - This folder contains the established robot dynamics model and the initial PD control strategy.
    - It includes the derivation of the robot's dynamic equations and the implementation of basic PD control for the manipulator.

3. DBO_PD_control_robot_xArm6
    - This directory features the optimization of PD parameters using the improved DBO algorithm.
    - It demonstrates the application of the optimized PD control strategy for the 6-DOF robot manipulator, focusing on improved performance and stability.

4. DBO_Fuzzy_PD_robot_xArm6
    - This folder contains the integration of the improved DBO algorithm with fuzzy logic.
    - It showcases the adaptive control strategy that adjusts the PD parameters in real-time to counteract external disturbances.
    - The files demonstrate the enhanced control system's ability to maintain high-precision trajectory tracking.

Prerequisites
Ensure that you have the necessary software and libraries installed to run the code:
- Matlab 2023b
- Simulink
- Fuzzy Logic Toolkit
- Any other dependencies specified in the respective folders

Usage
Each directory contains detailed instructions and scripts for running the respective components of the project. Refer to the README files within each folder for specific usage guidelines.

Contact
For any questions or inquiries, please contact [mahao1001@tsnu.edu.cn].

Thank you for exploring our project! We hope this repository provides valuable insights into the development and implementation of adaptive control strategies for robotic manipulators.
