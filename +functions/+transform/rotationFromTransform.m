function [rotationMatrix] = rotationFromTransform(transformMatrix)
% This function pulls the rotation matrix from transform matrices
    arguments
        transformMatrix (4,4)
    end
    
    rotationMatrix = transformMatrix(1:3,1:3);
    
end

