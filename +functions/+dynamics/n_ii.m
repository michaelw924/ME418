function [n_ii] = n_ii(N_ii,rotation_ip1_i,n_ip1_ip1,positionC_ii,F_ii,position_ip1_i,f_ip1_ip1)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        N_ii (3,1)
        rotation_ip1_i (3,3)
        n_ip1_ip1 (3,1)
        positionC_ii (3,1)
        F_ii (3,1)
        position_ip1_i (3,1)
        f_ip1_ip1 (3,1)
    end
    
    n_ii = N_ii+rotation_ip1_i*n_ip1_ip1 + cross(positionC_ii,F_ii) + cross(position_ip1_i,rotation_ip1_i*f_ip1_ip1);
    
end