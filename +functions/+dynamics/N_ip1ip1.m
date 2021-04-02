function [N] = N_ip1ip1(omegaDot_ii,omega_ii,Ic)
% This function summarizes the torques at a joint at the current link. 
% Eqn. 6.50 in the textbook.
    arguments
        omegaDot_ii (3,1)
        omega_ii (3,1)
        Ic (3,3)
    end
    
    N = (Ic * omegaDot_ii) + cross(omega_ii, Ic * omega_ii);
    
end