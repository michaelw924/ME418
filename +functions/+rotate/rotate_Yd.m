function [outputMatrix] = rotate_Yd(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [cosd(theta) 0 sind(theta); 0 1 0; -sind(theta) 0 cosd(theta)];
end

