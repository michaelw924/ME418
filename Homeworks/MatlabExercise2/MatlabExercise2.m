%% MATLAB_Exercise_2
% Michael White
% 3/26/2021
clear; clc; close all;

% Part A "by hand"
syms theta1 theta2 theta3 L1 L2 L3;
angles = [theta1 theta2 theta3 0];
links = [0 L1 L2 L3];
linkNames = {'01','12','23','3H'};

transform_01 = 
transform_01 = 
transform_01 = 
transform_01 = 

% transforms.transform_03 = transforms.transform_0H/transforms.transform_3H;
% c2 = (transforms.transform_03(1,4)^2+transforms.transform_03(2,4)^2-links(2)^2-links(3)^2)/(2*links(2)*links(3));
% s2 = sqrt(1-c2^2);
% theta2 = atan2(s2,c2);

% linkTransform_1 = ...
%     [cos(theta) -sin(theta) 0 linkLengthsVector(1); 
%      cos(theta)  sin(theta) 0 0;
%      0           0          1 0;
%      0           0          0 1];
% 
% transformMatrix/linkTransform_1