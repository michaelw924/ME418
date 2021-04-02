function [torque] = tau_i(n_ii)
% This function takes the calculated torque matrix for the entire joint and
% reduces it to just the Z component (the Z-axis of the joint is the joint
% axis
    arguments
        n_ii (3,1)
    end
    
    torque = n_ii(3);
    
end