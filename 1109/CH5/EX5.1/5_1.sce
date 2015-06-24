clear;
clc;
R=28;C=0.04*(10^-6);G=0;L=0;f=1600;s=2000;r=3.7;l=88*(10^-3);
Rc=R+(r/(s*(10^-3)));
Lc=L+(l/(s*(10^-3)));
Fc=1/(%pi*(sqrt(Lc*C)));
printf("-Cutoff frequency = %f Hz\n",round(Fc));
w=2*%pi*f;
a=sqrt(w*C*R/2);
al=((Rc/2)*sqrt(C/Lc))+((G/2)*sqrt(Lc/C));
A=(a-al)*8.686;
printf("-Decrease in attenuation = %f db/km",round(A*100)/100);
