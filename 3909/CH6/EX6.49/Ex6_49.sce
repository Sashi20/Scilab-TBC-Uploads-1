clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.49
//calculation of per cent error in classical expression of kinetic energy
//given data
c=3*10^8; //speed (in m/s) of light
m0=1; //assuming m0 to be 1 for simplicity of calculation
//calculation
v=0.5*c; //speed (in m/s) of a body
KE=1/2*m0*v^2; //classical kinetic energy
m=1/sqrt(1-v^2/c^2); //mass of body
KE1=(m-m0)*c^2; //relativistic kinetic energy
P=(KE1-KE)/KE*100; //per cent error in classical kinetic energy
printf("\nper cent error in classical kinetic energy is %d",P)
//the answers vary due to round off error
