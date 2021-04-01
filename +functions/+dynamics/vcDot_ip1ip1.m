function [linearAccelCentroid] = vcDot_ip1ip1(omegaDot_ip1_ip1,positionC_i_iplus1,omega_ip1_ip1,vDot_ip1_ip1)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        omegaDot_ip1_ip1 (3,1)
        positionC_i_iplus1 (3,1)
        omega_ip1_ip1 (3,1)
        vDot_ip1_ip1 (3,1)
    end
    
    linearAccelCentroid = cross(omegaDot_ip1_ip1,positionC_i_iplus1)+cross(omega_ip1_ip1,cross(omega_ip1_ip1,positionC_i_iplus1))+vDot_ip1_ip1;
   
end