clear;clc;

% syms c1 s1 c2 s2 c3 s3 L1 L2;
% T01 = [c1 -s1 0 0; s1 c1 0 0; 0 0 1 0; 0 0 0 1];
% T12 = [c2 -s2 0 L1; 0 0 -1 0; s2 c2 0 0; 0 0 0 1];
% T23 = [c3 -s3 0 L2; s3 c3 0 0; 0 0 1 0; 0 0 0 1];
% 
% T03 = T01*T12*T23;
% disp(T03);

syms c1 s1 c2 s2 L1 L2;
T01 = [c1 -s1 0 0; s1 c1 0 0; 0 0 1 0; 0 0 0 1];
T12 = [c2 -s2 0 L1; 0 0 -1 0; s2 c2 0 0; 0 0 0 1];
Ptip2 = [L2; 0; 0; 1];

T02 = T01*T12;
Ptip0 = T02*Ptip2;
display(T02);
display(Ptip0);