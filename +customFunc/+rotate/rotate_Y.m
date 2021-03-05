function [outputMatrix] = rotate_Y(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
end

