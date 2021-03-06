function [outputMatrix] = rotate_Xd(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [1 0 0; 0 cosd(theta) -sind(theta); 0 sind(theta) cosd(theta)];
end

