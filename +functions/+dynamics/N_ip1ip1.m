function [N] = N_ip1ip1(omegaDot_ii,omega_ii,Ic)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        omegaDot_ii (3,1)
        omega_ii (3,1)
        Ic (3,3)
    end
    
    N = (Ic * omegaDot_ii) + cross(omega_ii, Ic * omega_ii);
    
end