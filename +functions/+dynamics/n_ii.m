function [n_ii] = n_ii(N_ii,rotation_ip1i,n_ip1ip1,positionC_ii,F_ii,position_ip1i,f_ip1ip1)
% This function summarizes the torques at a joint from the previous link and
% the current link. Eqn. 6.52 in the textbook.
    arguments
        N_ii (3,1)
        rotation_ip1i (3,3)
        n_ip1ip1 (3,1)
        positionC_ii (3,1)
        F_ii (3,1)
        position_ip1i (3,1)
        f_ip1ip1 (3,1)
    end
    
    n_ii = N_ii+rotation_ip1i*n_ip1ip1 + cross(positionC_ii,F_ii) + cross(position_ip1i,rotation_ip1i*f_ip1ip1);
    
end