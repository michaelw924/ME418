clear;clc;clf;

% Create initial vectors
xyz = [1,0,0]';
xyz2 = [1,0,0]';

% Euler
xyz = customFunc.rotate.rotate_Zd(90)*xyz;
xyz = customFunc.rotate.rotate_Xd(45)*xyz;
% xyz = (customFunc.rotate.rotate_Zd(90)*xyz)*customFunc.rotate.rotate_Xd(45);

% % Fixed Angle
% xyz = customFunc.rotate.rotate_Xd(45)*customFunc.rotate.rotate_Zd(90);
% % customFunc.rotate.rotate2 = customFunc.rotate.rotate_Zd(90)*customFunc.rotate.rotate_Xd(45);
% xyz2 = customFunc.rotate.rotate2*xyz2;

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

%Plot Figure
plot3(x,y,z,'b','LineWidth',2);
plot3(x2,y2,z2,'r','LineWidth',2);
box on; grid on;

ax = gca(figure1);

xlim([-1,1]); xlabel('X Axis');
ylim([-1,1]); ylabel('Y Axis');
zlim([-1,1]); zlabel('Z Axis');