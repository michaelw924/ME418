function [outputMatrix] = Link2Transformd(alpha_i_minus_1,a_i_minus_1,d_i,theta_i)
%AXES2TRANSLATE Summary of this function goes here
%   Detailed explanation goes here

outputMatrix = [cosd(theta_i),-sind(theta_i),0,a_i_minus_1;...
    sind(theta_i)*cosd(alpha_i_minus_1),cosd(theta_i)*cosd(alpha_i_minus_1),-sind(alpha_i_minus_1),-d_i*sind(alpha_i_minus_1);...
    sind(theta_i)*sind(alpha_i_minus_1),cosd(theta_i)*sind(alpha_i_minus_1),cosd(alpha_i_minus_1),d_i*cosd(alpha_i_minus_1);...
    0, 0, 0, 1];
    

end

