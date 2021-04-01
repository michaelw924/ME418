function [tau] = tau_i(n_i_i)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        n_i_i (3,1)
    end
    
    tau = n_i_i' * [0 0 1];
    
end