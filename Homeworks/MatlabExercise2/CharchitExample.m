%clc

DR = pi/180;
L1 = 4 ; L2 = 3 ; L3 = 2;

%D-H paremeters
alp(1)=0; a(1)=L1; d(1)=0; th(1)=0;
alp(2)=0; a(2)=L2; d(2)=0; th(2)=0;
alp(3)=0; a(3)=0; d(3)=0; th(3)=0;

L_1 = Link([th(1),d(1),a(1),alp(1)],'mod');
L_2 = Link([th(1),d(2),a(2),alp(2)],'mod');
L_3 = Link([th(1),d(3),a(3),alp(3)],'mod');

Rob = SerialLink([L_1 L_2 L_3]);
Rob.name = 'Exercise2';

%%
%case1

TH3 = [1, 0, 0, L3;
       0, 1, 0, 0;
       0, 0, 1, 0;
       0, 0, 0, 1];
   
inverseTH3 = inv(TH3);

TH0_1 =[1, 0, 0, 9;
       0, 1, 0, 0;
       0, 0, 1, 0;
       0, 0, 0, 1];
T30_1 = TH0_1 * inverseTH3;

%Mask 
M = [1 1 0 0 0 1];

%guess
Guess = [0 10 20]*DR;
Q = Rob.ikine(T30_1, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

%Mask 
M = [1 -1 0 0 0 1];

%guess
Guess = [0 10 20]*DR;
Q = Rob.ikine(T30_1, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

%%
%case 2
TH0_2 = [0.5 -0.866 0 7.5373;
       0.866 0.5 0 3.9266;
       0 0 1 0;
       0 0 0 1];
T30_2 = TH0_2 * inverseTH3;

%Mask 
M = [1 1 0 0 0 1];

%guess
Guess = [20 10 30]*DR;
Q = Rob.ikine(T30_2, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

M = [1 -1 0 0 0 1];
Q = Rob.ikine(T30_2, Guess, 'mask', M);
q = Q/DR;
q
%%
%case 3

TH0_3 = [0, 1, 0, -3;
       -1, 0, 0, 2;
        0, 0, 1, 0;
        0, 0, 0, 1];
T30_3 = TH0_3 * inverseTH3;

%Mask 
M = [1 1 0 0 0 1];

%guess
Guess = [30 10 70]*DR;
Q = Rob.ikine(T30_3, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

M = [1 -1 0 0 0 1];
Q = Rob.ikine(T30_3, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

%%
%case 4
TH0_4 = [0.866, 0.5, 0, -3.1245;
       -0.5, 0.866, 0, 9.1674;
        0, 0, 1, 0;
        0, 0, 0, 1];
T30_4 = TH0_4 * inverseTH3;

%Mask 
M = [1 1 0 0 0 1];

%guess
Guess = [40 -20 50]*DR;
Q = Rob.ikine(T30_4, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q

%Mask 
M = [1 -1 0 0 0 1];

%guess
Guess = [40 -20 50]*DR;
Q = Rob.ikine(T30_4, Guess, 'mask', M);
%Rob.plot(Q);
q = Q/DR;
q