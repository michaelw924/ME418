function [linearAcceleration] = vDot_ip1ip1(rotation_iip1,omegaDot_ii,position_iip1,omega_ii,vDot_ii)
% This function summarizes the linear acceleration at a joint from the 
% previous link and the current link. Eqn. 6.34 in the textbook.
    arguments
        rotation_iip1 (3,3)
        omegaDot_ii (3,1)
        position_iip1 (3,1)
        omega_ii (3,1)
        vDot_ii (3,1)
    end
    
    linearAcceleration = rotation_iip1*(cross(omegaDot_ii,position_iip1)+cross(omega_ii,cross(omega_ii,position_iip1))+vDot_ii);
    
end