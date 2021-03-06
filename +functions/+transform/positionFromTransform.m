function [translationVector] = positionFromTransform(transformMatrix)
% This function pulls the translation vector from transform matrices
    arguments
        transformMatrix (4,4)
    end
    
    translationVector = transformMatrix(1:3,4);
    
end

