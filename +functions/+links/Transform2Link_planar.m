function [linkTable] = Transform2Link_planar(transformMatrix,linkLengthsVector)
%This function is intended to derive the link table from a defined
%transform matrix and a row vector of link lengths.

arguments
        transformMatrix (4,4)
        linkLengthsVector (1,:)
end
    for i = 1:length(linkLengthsVector)
        syms theta;
        
        linkTransform = ...
            [cos(theta) -sin(theta) 0 linkLengthsVector(i); 
             cos(theta)  sin(theta) 0 0;
             0           0          1 0;
             0           0          0 1];
        
        remainingTransform = transformMatrix/linkTransform;
     
        

end
