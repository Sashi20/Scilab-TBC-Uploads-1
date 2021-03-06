clear;
clc;
V=10;R1=5;R2=%i*5;R3=3+(%i*4);
Zab=R2+(1/((1/R1)+(1/R3)));
A=real(Zab);
B=imag(Zab);
I=V/(R1+R3);
Voc=I*R3;
C=real(Voc);
D=imag(Voc);
printf("The equivalent Thevenin circuit has an emf of %f /_ %f volts and an internal impedance of (%f + j%f) ohms",fix(abs(Voc)*100)/100,fix(atan(D,C)*180/%pi),A,B);
