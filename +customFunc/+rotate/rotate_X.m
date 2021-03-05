function [outputMatrix] = rotate_X(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
end

