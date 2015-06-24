//Ex:9.20
clc;
clear;
close;
n=0.5;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=1.3*10^-6// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
Po=0.4*10^-6;// in W
Ip=R*Po;// output photo current
I=8*10^-6;// output current in A
M=I/Ip;// multiplication factor
printf("The multiplication factor =%d", M);