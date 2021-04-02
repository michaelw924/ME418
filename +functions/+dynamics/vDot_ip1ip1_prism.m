function [linearAcceleration] = vDot_ip1ip1_prism(rotation_iip1,omegaDot_ii,position_iip1,omega_ii,vDot_ii,omega_ip1ip1,dDot_ip1ip1,dDotDot_ip1ip1)
% This function summarizes the linear acceleration at a prismatic joint from the 
% previous link and the current link. Eqn. 6.35 in the textbook.
    arguments
        rotation_iip1 (3,3)
        omegaDot_ii (3,1)
        position_iip1 (3,1)
        omega_ii (3,1)
        vDot_ii (3,1)
        omega_ip1ip1 (3,1)
        dDot_ip1ip1 (3,1)
        dDotDot_ip1ip1 (3,1)
    end
    
    linearAcceleration = rotation_iip1*(cross(omegaDot_ii,position_iip1)+cross(omega_ii,cross(omega_ii,position_iip1))+vDot_ii)...
        + cross(2*omega_ip1ip1,dDot_ip1ip1.*[0 0 1].') + dDotDot_ip1ip1.*[0 0 1].';
    
end