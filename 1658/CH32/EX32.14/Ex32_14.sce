clc;
V1=-2;
V2=2;
V3=-1;
R1=200*10**3;
R2=250*10**3;
R3=500*10**3;
Rf=1*10**6;
Vout=(-Rf/R1)*V1+(-Rf/R2)*V2+(-Rf/R3)*V3;
disp('V',Vout*1,"Vout=");
