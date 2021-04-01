% Dynamic equations using Newton-Euler formulation
syms L1 L2 theta1 theta2;
linkTable = [0 0 0 theta1; pi/2 L1 0 theta2; 0 L2 0 0];

T01 = functions.links.Link2Transform(linkTable(1,:));
T12 = functions.links.Link2Transform(linkTable(2,:));
T23 = functions.links.Link2Transform(linkTable(3,:));
display(T01);display(T12);display(T23);

T03 = functions.links.Link2Transform(linkTable);

% Pull and define rotations from transforms
R01 = functions.transform.rotationFromTransform(T01);
R12 = functions.transform.rotationFromTransform(T12);
R23 = functions.transform.rotationFromTransform(T23);

syms thetaDot_1 thetaDotDot_1 thetaDot_2 thetaDotDot_2 thetaDot_3 thetaDotDot_3 g;
syms c1 c2 c3 s1 s2 s3 m1 m2;

v0_dot = [0 0 g].';

% Define initial conditions
P_01 = [0 0 0];
Pc_11 = L1*[1 0 0].';
Pc_22 = L2*[1 0 0].';
Ic_11 = 0; Ic_22 = 0;
f3 = 0; n3 = 0;
w_0 = 0; wDot_0 = 0;

w_11 = functions.dynamics.angularVelocity(R01.',w_0,thetaDot_1);
wDot_11 = functions.dynamics.angularAcceleration(R01.',wDot_0,w_0,thetaDot_1,thetaDotDot_1);
vDot_11 = functions.dynamics.linearAccel(R01.',wDot_0,P_01,w_11,v0_dot);
vCDot_11 = functions.dynamics.linearAccelCentroid(wDot_11,P_01,w_11,vDot_11);
display(w_11);display(wDot_11);display(vDot_11);

F_11 = functions.dynamics.F_ip1_ip1(m1,vCDot_11);
N_11 = functions.dynamics.N(wDot_11,w_11,Ic_11);
