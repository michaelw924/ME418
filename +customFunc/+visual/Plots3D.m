clear;clc;clf;

oldFrame = eye(4);
newFrame = oldFrame;

newFrame = customFunc.links.Link2Transform(0,4,3,90)*newFrame;

%Make Axis Lines
figure1 = figure(1);
axis = [-600,600];
zero = [0,0];
plot3(axis,zero,zero,'--k');
hold on;
plot3(zero,axis,zero,'--k');
plot3(zero,zero,axis,'--k');

%Plot oldFrame
ax = gca(figure1);

% Generate origin plot properties
x_old = oldFrame(1:3,4)*oldFrame(1,1:3);
y_old = oldFrame(1:3,4)*oldFrame(1,1:3);
z_old = oldFrame(1:3,4)*oldFrame(1,1:3);

% Graph Origin Coordinate Frame


% delta = 0.5;
% line('XData', [oldFrame(1) oldFrame(1) + delta], 'YData', [oldFrame(2) oldFrame(2)],...
%     'ZData', [oldFrame(3) oldFrame(3)], 'Color','r','LineWidth',0.8);
% line('XData', [oldFrame(1) oldFrame(1)], 'YData', [oldFrame(2) oldFrame(2) + delta],...
%     'ZData', [oldFrame(3) oldFrame(3)], 'Color','g','LineWidth',0.8);
% line('XData', [oldFrame(1) oldFrame(1)], 'YData', [oldFrame(2) oldFrame(2)],...
%     'ZData', [oldFrame(3) oldFrame(3) + delta], 'Color','b','LineWidth',0.8);
% 
% line('XData', [newFrame(1) newFrame(1) + delta], 'YData', [newFrame(2) newFrame(2)],...
%     'ZData', [newFrame(3) newFrame(3)], 'Color','r','LineWidth',0.8);
% line('XData', [newFrame(1) newFrame(1)], 'YData', [newFrame(2) newFrame(2) + delta],...
%     'ZData', [newFrame(3) newFrame(3)], 'Color','g','LineWidth',0.8);
% line('XData', [newFrame(1) newFrame(1)], 'YData', [newFrame(2) newFrame(2)],...
%     'ZData', [newFrame(3) newFrame(3) + delta], 'Color','b','LineWidth',0.8);

xlim([