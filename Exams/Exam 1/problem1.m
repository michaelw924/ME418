% Code by Michael White for ME418 Midterm Exam, Problem 1
clear;clc;

syms theta phi;

% Note: These rotation functions generate a rotation matrix about the axis
% in the name by the inputted value. The functions with a "d" indicate that
% the degree-based trigonometric functions are being used in the function definition.
% In this case, since I am using syms, it is better to use the normal functions and is
% really irrelevant.

% Identifying rotation matrices for each individual rotation
RotationAboutX = functions.rotate.rotate_X(phi);
RotationAboutZ = functions.rotate.rotate_Z(theta);

% Generate fixed angle rotation matrix by multiplying opposite order of
% application:
RotationBA = RotationAboutZ*RotationAboutX;

% Display Result
display(RotationBA);