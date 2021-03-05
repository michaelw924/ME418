origin = [0 0 0];

% Create initial vectors
xyz = [1,0,0]';
xyz2 = [1,0,0]';

% Euler
xyz = customFunc.rotate.rotate_Zd(90)*xyz;
xyz = customFunc.rotate.rotate_Xd(45)*xyz;

x = [0,xyz(1)]; 
y = [0,xyz(2)]; 
z = [0,xyz(3)];

x2 = [0,xyz2(1)]; 
y2 = [0,xyz2(2)]; 
z2 = [0,xyz2(3)];

%Make Axis Lines
figure1 = figure(1);
axis = [-1,1];
zero = [0,0];
plot3(axis,zero,zero,'--k');
hold on;
plot3(zero,axis,zero,'--k');
plot3(zero,zero,axis,'--k');

%Plot Origin
ax = gca(figure1);

delta = 0.5;
line('XData', [origin(1) origin(1) + delta], 'YData', [origin(2) origin(2)],...
    'ZData', [origin(3) origin(3)], 'Color','r');
line('XData', [origin(1) origin(1)], 'YData', [origin(2) origin(2) + delta],...
    'ZData', [origin(3) origin(3)], 'Color','g');
line('XData', [origin(1) origin(1)], 'YData', [origin(2) origin(2)],...
    'ZData', [origin(3) origin(3) + delta], 'Color','b');

% xlim([-1,1]); xlabel('X Axis');
% ylim([-1,1]); ylabel('Y Axis');
% zlim([-1,1]); zlabel('Z Axis');