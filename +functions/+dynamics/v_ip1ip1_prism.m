function [linearVelocity] = v_ip1ip1_prism(rotation_i_iplus1,linear_ii,angular_ii,P_iplus1_i,dDot_ip1)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_iplus1 (3,3)
        linear_ii (3,1)
        angular_ii (3,1)
        P_iplus1_i (3,1)
        dDot_ip1 (3,1)
    end
    
    linearVelocity = rotation_i_iplus1*(linear_ii + cross(angular_ii,P_iplus1_i))+dDot_ip1.*[0 0 1].';
end