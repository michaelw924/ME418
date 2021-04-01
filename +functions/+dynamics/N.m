function [N] = N(omegaDot_ii,omega_ii,Ic)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        Ic (3,3)
        omegaDot_ii (3,1)
        omega_ii (3,1)
    end
    
    N = (Ic * omegaDot_ii) + cross(omega_ii, Ic * omega_ii);
    
end