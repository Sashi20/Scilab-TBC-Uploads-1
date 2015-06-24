clear;
clc;
w=5*(10^6);Rg=800;Rl=200;b=-12;
X3=-(sqrt(Rg*Rl))/sin(b*%pi/180);
L3=X3/w;
X1=(-Rg/tan(b*%pi/180))+((sqrt(Rg*Rl)/sin(b*%pi/180)));
L1=X1/w;
X2=(-Rl/tan(b*%pi/180))+((sqrt(Rg*Rl)/sin(b*%pi/180)));
C2=-1/(X2*w);
printf("-L3 = %f micro-henry\n",fix(L3*(10^6)));
printf("-L1 = %f micro-henry\n",fix(L1*(10^6)));
printf("-C2 = %f pf",round(C2*(10^12)));
