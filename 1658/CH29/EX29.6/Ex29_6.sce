
clc;
close;
f=100*10^(-3);
T=(1/f);
disp('us',T*1,'T=');
tp=(1/T);
disp('us',tp*1,'tp=');
C1=0.001*10^(-6);
R3=((5*10^(-6))/(0.69*C1));
disp('kohm',R3*10^(-3),'R3=');
