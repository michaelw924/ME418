function [linearVelocity] = linearVelocity(rotation_i_iplus1,linear_ii,angular_ii,P_iplus1_i)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_iplus1 (3,3)
        linear_ii (3,1)
        angular_ii (3,1)
        P_iplus1_i (3,1)
    end
    
    linearVelocity = rotation_i_iplus1*(linear_ii + cross(angular_ii,P_iplus1_i));
end