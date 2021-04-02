function [f] = f_ii(rotation_ip1i,f_ip1ip1,F)
% This function summarizes the forces at a joint from the previous link and
% the current link. Eqn. 6.51 in the textbook.
    arguments
        rotation_ip1i (3,3)
        f_ip1ip1 (3,1)
        F (3,1)
    end
    
    f = (rotation_ip1i * f_ip1ip1) + F;
    
end