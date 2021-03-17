% Code by Michael White for ME418 Midterm Exam, Problem 4
clear;clc;close all;

% Define variables for symbolic
    syms L1 L2 d2 theta1 theta3;

    % Setup link parameter table
    linkTable_a = [0 0 L1 theta1; pi/2 0 d2 0; 0 0 L2 theta3];

    Transform_12 = functions.links.Link2Transform(linkTable_a(2,:));
    
    % Input link paramter into link2transform function
    Transform_a = functions.links.Link2Transform(linkTable_a);
    
    % Display transform
    display(Transform_a);