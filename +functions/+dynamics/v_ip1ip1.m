function [linearVelocity] = v_ip1ip1(rotation_iip1,linear_ii,angular_ii,P_ip1i)
% This function summarizes the linear velocity at a joint from the 
% previous link and the current link. Eqn. 5.47 in the textbook.
    arguments
        rotation_iip1 (3,3)
        linear_ii (3,1)
        angular_ii (3,1)
        P_ip1i (3,1)
    end
    
    linearVelocity = rotation_iip1*(linear_ii + cross(angular_ii,P_ip1i));
end