function [linearVelocityPrism] = v_ip1ip1_prism(rotation_iip1,linear_ii,angular_ii,P_iplus1_i,dDot_ip1)
% This function summarizes the linear velocity at a prismatic joint from the 
% previous link and the current link. Eqn. 5.48 in the textbook.
    arguments
        rotation_iip1 (3,3)
        linear_ii (3,1)
        angular_ii (3,1)
        P_iplus1_i (3,1)
        dDot_ip1 (3,1)
    end
    
    linearVelocityPrism = rotation_iip1*(linear_ii + cross(angular_ii,P_iplus1_i))+dDot_ip1.*[0 0 1].';
end