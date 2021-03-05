function [outputMatrix] = Link2Transform(alpha_i_minus_1,a_i_minus_1,d_i,theta_i)
%AXES2TRANSLATE Summary of this function goes here
%   Detailed explanation goes here

outputMatrix = [cos(theta_i),-sin(theta_i),0,a_i_minus_1;...
    sin(theta_i)*cos(alpha_i_minus_1),cos(theta_i)*cos(alpha_i_minus_1),-sin(alpha_i_minus_1),-d_i*sin(alpha_i_minus_1);...
    sin(theta_i)*sin(alpha_i_minus_1),cos(theta_i)*sin(alpha_i_minus_1),cos(alpha_i_minus_1),d_i*cos(alpha_i_minus_1);...
    0, 0, 0, 1];
    

end

