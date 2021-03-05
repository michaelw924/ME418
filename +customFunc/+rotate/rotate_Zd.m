function [outputMatrix] = rotate_Zd(theta)
%UNTITLED Summary of this function goes here
outputMatrix = [cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1];
end

