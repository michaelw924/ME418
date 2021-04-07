%% MATLAB_Exercise_2
% Michael White
% 3/26/2021
clear; clc; close all;

%% Part A "by hand"
    syms L1 L2 L3 cphi sphi x y;

    % Generate known transforms in symbolic form (flip signs of sines for
    % inputs to be the same)
    tforms.T_3H = [1 0 0 L3; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    tforms.T_0H = [cphi sphi 0 x; -sphi cphi 0 y; 0 0 1 0; 0 0 0 1];

    % Calculate theta2 using equations 4.14-4.16 from textbook
    tforms.T_03 = tforms.T_0H/tforms.T_3H;
    c2 = (tforms.T_03(1,4)^2+tforms.T_03(2,4)^2-L1^2-L2^2)/(2*L1*L2);
    s2 = sqrt(1-c2^2);
    theta2 = atan2(s2,c2);

    % Calculate theta1 from equations 4.19 and 4.27 in the textbook
    k1 = L1+c2*L2;
    k2 = L2*s2;
    theta1 = atan2(tforms.T_03(2,4),tforms.T_03(1,4))-atan2(k2,k1);

    % Calculate theta3 from equation 4.28 in the textbook
    phi = -atan2(sphi,cphi);
    theta3 = phi - theta1 - theta2;

    % Display symbolic results
    disp("Theta 1 = "); disp(theta1);
    disp("Theta 2 = "); disp(theta2);
    disp("Theta 3 = "); disp(theta3);

%% Part B: Testing Examples
    examples.i.T = [1 0 0 9; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    examples.ii.T = [0.5 -0.866 0 7.5373; 0.866 0.5 0 3.9266; 0 0 1 0; 0 0 0 1];
    examples.iii.T = [0 1 0 -3; -1 0 0 2; 0 0 1 0; 0 0 0 1];
    examples.iv.T = [0.866 0.5 0 -3.1245; -0.5 0.866 0 9.1674; 0 0 1 0; 0 0 0 1];
    nameList = {'i' 'ii' 'iii' 'iv'};

    for i = 1:length(nameList)
        examples.(char(nameList(i))).theta_rad(1) = double(subs(theta1,...
            [sphi cphi x y L1 L2 L3],...
            [examples.(char(nameList(i))).T(1,2) examples.(char(nameList(i))).T(1,1)...
            examples.(char(nameList(i))).T(1,4) examples.(char(nameList(i))).T(2,4) 4 3 2]));
        examples.(char(nameList(i))).theta_rad(2) = double(subs(theta2,...
            [sphi cphi x y L1 L2 L3],...
            [examples.(char(nameList(i))).T(1,2) examples.(char(nameList(i))).T(1,1)...
            examples.(char(nameList(i))).T(1,4) examples.(char(nameList(i))).T(2,4) 4 3 2]));
        examples.(char(nameList(i))).theta_rad(3) = double(subs(theta3,...
            [sphi cphi x y L1 L2 L3],...
            [examples.(char(nameList(i))).T(1,2) examples.(char(nameList(i))).T(1,1)...
            examples.(char(nameList(i))).T(1,4) examples.(char(nameList(i))).T(2,4) 4 3 2]));
        
        examples.(char(nameList(i))).theta_deg = 180/pi*examples.(char(nameList(i))).theta_rad;
    end
    
    %% Part C: Validating with 