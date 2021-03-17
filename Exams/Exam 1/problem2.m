% Code by Michael White for ME418 Midterm Exam, Problem 2
clear;clc;close all;

% First part (Transform_AC)
    % Define translation
    Translate_AC = [-3,4,2]';

    % Define rotations
    FirstRotation_AC = functions.rotate.rotate_Xd(180);
    SecondRotation_AC = functions.rotate.rotate_Zd(-36.87);

    % Combine rotations
    Rotation_AC = FirstRotation_AC*SecondRotation_AC;

    % Combine rotation matrix w/ translation into full transform
    Transform_AC = [Rotation_AC, Translate_AC; 0 0 0 1];

% Second part (Transform_BC)
    % Define translation
    Translate_BC = [3,0,0]';

    % Define rotations
    FirstRotation_BC = functions.rotate.rotate_Xd(-90);
    SecondRotation_BC = functions.rotate.rotate_Zd(143.13);

    % Combine rotations
    Rotation_BC = FirstRotation_BC*SecondRotation_BC;

    % Combine rotation matrix w/ translation into full transform
    Transform_BC = [Rotation_BC, Translate_BC; 0 0 0 1];
    
% Third part (Transform_CA)
    Transform_CA = Transform_AC^-1;
    
% Switch case for checking visuals of each scenario, change the value to
% see the other options: (X-axis = red, Y-axis = green, Z-axis = blue)
switch 0
    case 0
        figure;
        functions.visual.plotTransform(Transform_AC); % Looks good!
    case 1
        figure;
        functions.visual.plotTransform(Transform_BC); % Looks good!
    case 2
        figure;
        functions.visual.plotTransform(Transform_CA); % It is good, but hard to see.
end
