function [angularVelocity] = omega_ip1ip1(rotation_iip1,angular_ii,thetadot)
% This function summarizes the angular velocity at a joint from the previous link and
% the current link. Eqn. 6.45 in the textbook.
    arguments
        rotation_iip1 (3,3)
        angular_ii (3,1)
        thetadot
    end
    
    angularVelocity = rotation_iip1*angular_ii + thetadot*[0 0 1]';
    
end