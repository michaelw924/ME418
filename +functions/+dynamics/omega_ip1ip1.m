function [angularVelocity] = omega_ip1ip1(rotation_i_iplus1,angular_ii,thetadot)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_iplus1 (3,3)
        angular_ii (3,1)
        thetadot
    end
    
    angularVelocity = rotation_i_iplus1*angular_ii + thetadot*[0 0 1]';
    
end