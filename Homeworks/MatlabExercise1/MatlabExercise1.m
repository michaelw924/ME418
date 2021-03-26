%% MATLAB_Exercise_1
% Michael White
% 3/26/2021
clear; clc;

% PART A

    % Define symbolic parameters
    syms theta1 theta2 theta3 L1 L2 L3;

    % Define link parameter table
    linkParamTable = ...
        [0 0 0 theta1;
        0 L1 0 theta2;
        0 L2 0 theta3];

% PART B

    % Identify transformation matrices for each link (I will append the
    % functions I use to the end of this pdf)
    StepTransforms.Transform_01 = functions.links.Link2Transform(linkParamTable(1,:));
    StepTransforms.Transform_12 = functions.links.Link2Transform(linkParamTable(2,:));
    StepTransforms.Transform_23 = functions.links.Link2Transform(linkParamTable(3,:));

    % The transform to point H requires another row to the parameter table,
    % which I will append here:
    linkParamTable(4,:) = [0 L3 0 0];

    % Take new row and find appropriate transform:
    StepTransforms.Transform_3H = functions.links.Link2Transform(linkParamTable(4,:));

% PART C

% For this part, I can use symbolic MATLAB in my functions to solve for the
% symbolic transforms, then substitute the actual functions with the
% replacement symbolics of ci and si with the subs function

% Derive the Transform_03 and Transform_0H
Transform_03.trig = functions.links.Link2Transform(linkParamTable(1:3,:));
Transform_0H.trig = functions.links.Link2Transform(linkParamTable(1:4,:));

% Convert trig functions to simplified syms
syms c1 c2 c3 s1 s2 s3;
Transform_03.simple = subs(Transform_03.trig,...
    [cos(theta1), cos(theta2), cos(theta3),...
     sin(theta1), sin(theta2), sin(theta3)],...
    [c1, c2, c3, s1, s2, s3]);
Transform_0H.simple = subs(Transform_0H.trig,...
    [cos(theta1), cos(theta2), cos(theta3),...
     sin(theta1), sin(theta2), sin(theta3)],...
    [c1, c2, c3, s1, s2, s3]);

% Convert trig combinations from angle sum formula to simplified versions
syms c12 c23 s12 s23;
Transform_03.simple = subs(Transform_03.simple,...
    [c1*c2-s1*s2, c2*c3-s2*s3, c1*s2+s1*c2, c2*s3+s2*c3],...    
    [c12, c23, s12, s23]);
Transform_0H.simple = subs(Transform_0H.simple,...
    [c1*c2-s1*s2, c2*c3-s2*s3, c1*s2+s1*c2, c2*s3+s2*c3],...    
    [c12, c23, s12, s23]);

% Convert trig combinations from angle sum formula to simplified versions
syms c123 s123;
Transform_03.simple = subs(Transform_03.simple,...
    [c3*c12-s3*s12, c3*s12+s3*c12],...    
    [c123, s123]);
Transform_0H.simple = subs(Transform_0H.simple,...
    [c3*c12-s3*s12, c3*s12+s3*c12],...    
    [c123, s123]);

% Display results from simplified transforms
display(Transform_03.simple); display(Transform_0H.simple);

% Create quantified transform for scenario i (this one is quite simple)
Transform_03.i = subs(Transform_03.trig, [theta1, theta2, theta3], [0 0 0]);

% Create quantified transform for scenario ii. For this one, I will be
% doing some math myself to replace the simplified substitutions in the
% simplified transform to produce a simplified, quantified result.
syms c60 s60 c10 c30 s10 s30; % In this case, these symbol #s are equal to the angle
Transform_03.ii = subs(Transform_03.simple,...
    [c123, s123, c1, c12, s1, s12],...
    [c60, s60, c10, c30, s10, s30]);

