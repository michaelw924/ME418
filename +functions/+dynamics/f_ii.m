function [f] = f_ii(rotation_ip1_i,f_ip1_ip1,F)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        rotation_ip1_i (3,3)
        f_ip1_ip1 (3,1)
        F (3,1)
    end
    
    f = (rotation_ip1_i * f_ip1_ip1) + F;
    
end