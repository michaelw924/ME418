function [linearAccelCentroid] = vcDot_ip1ip1(omegaDot_ip1ip1,positionC_iip1,omega_ip1ip1,vDot_ip1ip1)
% This function summarizes the linear acceleration of the centroid of joint from the 
% previous link and the current link. Eqn. 6.48 in the textbook.
    arguments
        omegaDot_ip1ip1 (3,1)
        positionC_iip1 (3,1)
        omega_ip1ip1 (3,1)
        vDot_ip1ip1 (3,1)
    end
    
    linearAccelCentroid = cross(omegaDot_ip1ip1,positionC_iip1)+cross(omega_ip1ip1,cross(omega_ip1ip1,positionC_iip1))+vDot_ip1ip1;
   
end