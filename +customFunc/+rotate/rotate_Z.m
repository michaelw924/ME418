function [outputMatrix] = rotate_Z(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];
end

