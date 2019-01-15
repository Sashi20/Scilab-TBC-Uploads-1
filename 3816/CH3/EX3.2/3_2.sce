clc;
clear;
S=108;//slot
m=3;
P1=16;//2p=16
disp('for 16 pole 3 phase machine :')
g1=S/(P1*m);
disp(g1,'The integral slot winding is:')
disp('For 10 pole 3 phase machine :')
P2=10;//2p=10
g2=S/(P2*m);
disp(g2,'The integral slot winding is:')
