% Code by Michael White for ME418 Midterm Exam, Problem 3
clear;clc;close all;

% Using a switch case to separate the parts
switch 0
    case 0 % First part (part a)

    % Define variables for symbolic
    syms L1 L2 theta1 theta2 theta3;

    % Setup link parameter table
    linkTable_a = [0 0 L1 theta1; pi/2 0 0 theta2; 0 L2 0 theta3];

    % Input link paramter into link2transform function
    Transform_a = functions.links.Link2Transform(linkTable_a);
    
    % Display transform
    display(Transform_a);

    case 1 % Second part (part b) 
    
    % Define variables for symbolic
    syms L1 L2 d1 theta2 theta3;
        
    % Setup link parameter table
    linkTable_b = [0 0 d1 0; 0 L1 0 theta2; 0 L2 0 theta3];
    
    % Input link paramter into link2transform function
    Transform_b = functions.links.Link2Transform(linkTable_b);
    
    % Display answer
    display(Transform_b);
end