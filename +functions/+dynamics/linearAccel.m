function [linearAcceleration] = linearAccel(rotation_i_iplus1,omegaDot_ii,position_i_iplus1,omega_ii,vDot_ii)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_iplus1 (3,3)
        omegaDot_ii (3,1)
        position_i_iplus1 (3,1)
        omega_ii (3,1)
        vDot_ii (3,1)
    end
    
    linearAcceleration = rotation_i_iplus1*(cross(omegaDot_ii,position_i_iplus1)+cross(omega_ii,cross(omega_ii,position_i_iplus1))+vDot_ii);
    
end