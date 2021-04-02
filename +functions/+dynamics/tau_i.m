function [torque] = tau_i(n_ii)
% This function isolates the z term (for the joint axis) of the torque
% summary. Eqn. 6.53 in the textbook.
    arguments
        n_ii (3,1)
    end
    
    torque = n_ii(3);
    
end