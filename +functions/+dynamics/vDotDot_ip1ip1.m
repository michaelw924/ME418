function [linearAcceleration] = vDotDot_ip1ip1(rotation_i_ip1,omegaDot_ii,position_i_ip1,omega_ii,vDot_ii,omega_ip1ip1,dDot_ip1ip1,dDotDot_ip1ip1)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_i_ip1 (3,3)
        omegaDot_ii (3,1)
        position_i_ip1 (3,1)
        omega_ii (3,1)
        vDot_ii (3,1)
        omega_ip1ip1 (3,1)
        dDot_ip1ip1 (3,1)
        dDotDot_ip1ip1 (3,1)
    end
    
    linearAcceleration = rotation_i_ip1*(cross(omegaDot_ii,position_i_ip1)+cross(omega_ii,cross(omega_ii,position_i_ip1))+vDot_ii)...
        + cross(2*omega_ip1ip1,dDot_ip1ip1.*[0 0 1].') + dDotDot_ip1ip1.*[0 0 1].';
    
end