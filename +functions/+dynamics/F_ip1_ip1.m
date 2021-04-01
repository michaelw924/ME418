function [F] = F_ip1_ip1(m_ip1, vcdot_ip1_ip1)
% This function is intended to convert a link matrix table to an overall
% transform matrix.
%   Detailed explanation goes here
    arguments
        m_ip1 double
        vcdot_ip1_ip1 (3, 1)
    end
    
    F = m_ip1 .* vcdot_ip1_ip1;
    
end