Fuzzy-DBO algorithm - PD control Simulink robot arm

Continue to optimize PD parameters based on PD control, and use heuristic algorithm to run multiple times to find the optimal parameters

1. Three files required for the robot model:
RUDF                    % robot model folder
DOF6_xArm.slx   % Simulink modeling
loadrobot.m        % load the robot to the workspace
Only with the above can the robot model in Simulink be called

2. Then the DBO algorithm optimizes the PD parameters in Simulink
The optimization target is IAE, absolute error and.
Variable PD value: [0,0] - [200,200]
dim = 2;
Number of populations = 30;
Maximum number of iterations = 10 times;
Just loop calculation

3. Drawing comparison

4. Fuzzy control Fuzzy logic PD
Fuzzy rule table.doc
Fuzzy Logic Controller：fuzzyPD.fis

This involves: robot calculation torque, fuzzy control PD, heuristic algorithm PD.
The running results can adjust the PD value in real time
Total tracking error.
Logical rules need to be further designed and improved