% Dynamic equations using Newton-Euler formulation
syms L1 L2 theta1 theta2;
linkTable = [0 0 0 theta1; pi/2 L1 0 theta2; 0 L2 0 0];

T01 = functions.links.Link2Transform(linkTable(1,:));
T12 = functions.links.Link2Transform(linkTable(2,:));
T23 = functions.links.Link2Transform(linkTable(3,:));
display(T01);display(T12);display(T23);

T03 = functions.links.Link2Transform(linkTable);

syms theta1_d theta1_dd g theta2_d theta2_dd;
syms c1 c2 c3 s1 s2 s3;

v0_dot = [0 0 g]';