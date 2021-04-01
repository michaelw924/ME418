function [angularAcceleration] = omegaDot_ip1ip1(rotation_i_iplus1,omegaDot_ii,omega_ii,thetaDot,thetaDotDot)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_iplus1 (3,3)
        omegaDot_ii (3,1)
        omega_ii (3,1)
        thetaDot 
        thetaDotDot 
    end
    
    angularAcceleration = rotation_i_iplus1*omegaDot_ii + cross((rotation_i_iplus1*omega_ii),(thetaDot*[0 0 1]')) + thetaDotDot*[0 0 1]';
    
end