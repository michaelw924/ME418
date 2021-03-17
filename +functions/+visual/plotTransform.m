function plotTransform(transformMatrix)
%PLOT3D This function looks to take a transform and move a frame, plotting
%the original position and the final position
oldFrame = eye(4);
newFrame = oldFrame;

newFrame = transformMatrix*newFrame;

% Generate old frame translation
oldFrameOrigin = functions.transform.positionFromTransform(oldFrame);

% Generate new frame properties
newFrameOrigin = functions.transform.positionFromTransform(newFrame);

% Generate sizing properties
axesSize(1) = newFrameOrigin(1)+5;
axesSize(2) = newFrameOrigin(2)+5;
axesSize(3) = newFrameOrigin(3)+5;
axesSize = max(abs(axesSize));
frameSize = 0.2*axesSize;
% frameSize = 1;

% Generate old frame rotations
oldFrameX = functions.transform.rotationFromTransform(oldFrame)*[frameSize 0 0]'+oldFrameOrigin;
oldFrameY = functions.transform.rotationFromTransform(oldFrame)*[0 frameSize 0]'+oldFrameOrigin;
oldFrameZ = functions.transform.rotationFromTransform(oldFrame)*[0 0 frameSize]'+oldFrameOrigin;

% Generate new frame rotations
newFrameX = functions.transform.rotationFromTransform(newFrame)*[frameSize 0 0]'+newFrameOrigin;
newFrameY = functions.transform.rotationFromTransform(newFrame)*[0 frameSize 0]'+newFrameOrigin;
newFrameZ = functions.transform.rotationFromTransform(newFrame)*[0 0 frameSize]'+newFrameOrigin;

% Setup plot
figure1 = figure(1);
axis = [-axesSize,axesSize];
xlim(axis);ylim(axis);zlim(axis);
xlabel('X Axis');ylabel('Y Axis');zlabel('Z Axis');
zero = [0,0];
plot3(axis,zero,zero,'--k');
hold on;
plot3(zero,axis,zero,'--k');
plot3(zero,zero,axis,'--k');
box on; grid on;

% Plot old coordinate frame
line([oldFrameOrigin(1) oldFrameX(1)],[oldFrameOrigin(2) oldFrameX(2)],[oldFrameOrigin(3) oldFrameX(3)],'Color','r','Linewidth',2);
line([oldFrameOrigin(1) oldFrameY(1)],[oldFrameOrigin(2) oldFrameY(2)],[oldFrameOrigin(3) oldFrameY(3)],'Color','g','LineWidth',2);
line([oldFrameOrigin(1) oldFrameZ(1)],[oldFrameOrigin(2) oldFrameZ(2)],[oldFrameOrigin(3) oldFrameZ(3)],'Color','b','LineWidth',2);

% Plot new coordinate frame
line([newFrameOrigin(1) newFrameX(1)],[newFrameOrigin(2) newFrameX(2)],[newFrameOrigin(3) newFrameX(3)],'Color','r','LineWidth',2);
line([newFrameOrigin(1) newFrameY(1)],[newFrameOrigin(2) newFrameY(2)],[newFrameOrigin(3) newFrameY(3)],'Color','g','LineWidth',2);
line([newFrameOrigin(1) newFrameZ(1)],[newFrameOrigin(2) newFrameZ(2)],[newFrameOrigin(3) newFrameZ(3)],'Color','b','LineWidth',2);