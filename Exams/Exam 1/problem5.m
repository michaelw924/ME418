% Code by Michael White for ME418 Midterm Exam, Problem 5
clear;clc;

syms theta1 theta2 theta3 L1 L2 L3 c1 c2 c3 s1 s2 s3 Fx Fy Fz;

linkTable = [0 0 0 theta1; 0 L1 0 theta2; 0 L2 0 theta3; 0 L3 0 0];

% Transform01 = functions.links.Link2Transform(linkTable(1,:));
% Transform12 = functions.links.Link2Transform(linkTable(2,:));

R32 = [c2 -s2 0; s2 c2 0; 0 0 1];
w22 = [0 0 theta1+theta2]';
v22 = [L1*theta1*s2; L1*theta1*c2+L2*(theta1+theta2); 0];
something = [L3*s3*Fz; L2*Fz-L3*c3*Fz; L2*(s3*Fx+c3*Fy)+L3*Fy];

awful = R32*[c3*Fx-s3*Fy;s3*Fx+c3*Fx;Fz];
cross([L1 0 0],awful)
R32*something