function [outputMatrix] = Link2Transform(linkMatrix)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        linkMatrix (:,4)
    end
    
    for i = 1:size(linkMatrix,1)
   
        alpha_i_minus_1 = linkMatrix(i,1);
        a_i_minus_1 = linkMatrix(i,2);
        d_i = linkMatrix(i,3);
        theta_i = linkMatrix(i,4);

        transformMatrix = ...
            [cos(theta_i),-sin(theta_i),0,a_i_minus_1;...
            sin(theta_i)*cos(alpha_i_minus_1),cos(theta_i)*cos(alpha_i_minus_1),-sin(alpha_i_minus_1),-d_i*sin(alpha_i_minus_1);...
            sin(theta_i)*sin(alpha_i_minus_1),cos(theta_i)*sin(alpha_i_minus_1),cos(alpha_i_minus_1),d_i*cos(alpha_i_minus_1);...
            0, 0, 0, 1];
        if i > 1
            tempMatrix = tempMatrix*transformMatrix;
        else
            tempMatrix = transformMatrix;
        end
    end
    outputMatrix = tempMatrix;
end

