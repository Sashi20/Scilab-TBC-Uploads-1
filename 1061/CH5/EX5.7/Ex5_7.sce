//Ex:5.7
clc;
clear;
close;
n1=1.5;// core refractive index
dl=0.01;// relative index difference
L=6*10^3;// optical length in meter
c=3*10^8;// the speed of light in m/s
rm=(L*n1*dl)/(2*sqrt(3)*c);// rms pulse broadening s
rM=rm*10^9;// rms pulse broadening ns
bt=0.2/rm;// max bit rate in bit/sec
bT=bt/10^6;// max bit rate in M bits/sec
printf("The rms pulse broadening =%f ns", rM);
printf("\n The max bit rate =%f M bits/sec", bT);