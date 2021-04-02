function [F] = F_ip1ip1(m_ip1, vcdot_ip1ip1)
% This function summarizes the forces at the current link. 
% Eqn. 6.49 in the textbook.
    arguments
        m_ip1 
        vcdot_ip1ip1 (3,1)
    end
    
    F = m_ip1 .* vcdot_ip1ip1;
    
end