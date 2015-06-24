//Ex:4.18
clc;
clear;
close;
BW=15;// beamwidth in degree
f=1.5*10^3;// frequenc in MHz
y=300/f;// wavelength in m
D=(140*y)/(BW);// diameter of the paraboloidal reflector in m
printf("The diameter of the paraboloidal reflector = %f meter", D);