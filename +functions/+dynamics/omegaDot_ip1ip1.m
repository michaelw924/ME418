function [angularAcceleration] = omegaDot_ip1ip1(rotation_iip1,omegaDot_ii,omega_ii,thetaDot,thetaDotDot)
% This function summarizes the angular acceleration at a joint from the 
% previous link and the current link. Eqn. 6.46 in the textbook.
    arguments
        rotation_iip1 (3,3)
        omegaDot_ii (3,1)
        omega_ii (3,1)
        thetaDot 
        thetaDotDot 
    end
    
    angularAcceleration = rotation_iip1*omegaDot_ii + cross((rotation_iip1*omega_ii),(thetaDot*[0 0 1]')) + thetaDotDot*[0 0 1]';
    
end