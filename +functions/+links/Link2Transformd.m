function [outputMatrix] = Link2Transformd(linkMatrix)
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
            [cosd(theta_i),-sind(theta_i),0,a_i_minus_1;...
            sind(theta_i)*cosd(alpha_i_minus_1),cosd(theta_i)*cosd(alpha_i_minus_1),-sind(alpha_i_minus_1),-d_i*sind(alpha_i_minus_1);...
            sind(theta_i)*sind(alpha_i_minus_1),cosd(theta_i)*sind(alpha_i_minus_1),cosd(alpha_i_minus_1),d_i*cosd(alpha_i_minus_1);...
            0, 0, 0, 1];
        if i > 1
            outputMatrix = tempMatrix*transformMatrix;
        else
            outputMatrix = transformMatrix;
        end
    end

end

