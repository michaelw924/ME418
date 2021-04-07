%% MATLAB_Exercise_2
% Michael White
% 3/26/2021
clear; clc; close all;

% Part A "by hand"
syms L1 L2 L3 c1 c2 c3 s1 s2 s3 cphi sphi X Y;

% Generate known transforms in symbolic form
tforms.T_01 = [c1 -s1 0 0; c1 s1 0 0; 0 0 1 0; 0 0 0 1];
tforms.T_12 = [c2 -s2 0 L1; c2 s2 0 0; 0 0 1 0; 0 0 0 1];
tforms.T_23 = [c3 -s3 0 L2; c3 s3 0 0; 0 0 1 0; 0 0 0 1];
tforms.T_3H = [1 0 0 L3; 0 1 0 0; 0 0 1 0; 0 0 0 1];
tforms.T_0H = [cphi -sphi 0 X; cphi sphi 0 Y; 0 0 1 0; 0 0 0 1];

% Calculate theta2 using equations 4.14-4.16 from textbook
tforms.T_03 = tforms.T_0H/tforms.T_3H;
c2 = (tforms.T_03(1,4)^2+tforms.T_03(2,4)^2-L1^2-L3^2)/(2*L1*L3);
s2 = sqrt(1-c2^2);
theta2 = atan2(s2,c2);

k1 = L1+s2*L2;
k2 = L2*s2;
r = sqrt(k1^2+k2^2);