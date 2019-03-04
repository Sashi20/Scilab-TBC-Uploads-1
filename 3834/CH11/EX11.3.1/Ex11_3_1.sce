//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.1
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

Pin=0.1E-6;//Average input power in W
lambda=1550;//Operating wavelength in nm
R=1;//Responsivity of an MF-432 PIN photodiode
Ip=R*Pin;
e=1.6E-19;//Electrons value in Coulomb
BWpd=2.5E+9;//Bandwidth of an MF-432 PIN photodiode in Hz
Is=sqrt(2*e*Ip*BWpd);
Isn=Is/sqrt(BWpd);//shot noise current in A/sqrt(Hz)

Kb=1.38E-23;//Boltzman constant in J/K
T=300;//Room temperature in K
P=Kb*T;
Rl=50E+3;
x=(4*P)/Rl;
It=sqrt(x*BWpd);
Itn=sqrt(x);//thermal noise current in A/sqrt(Hz)

id=3E-9;//average dark noise current in A
Id=sqrt(2*e*id*BWpd);
Idn=Id/sqrt(BWpd);//dark noise current in A/sqrt(Hz)

Inoise=sqrt(Is^2+It^2+Id^2);
mprintf("RMS value of noise current for an MF-432 PIN photodiode = %.1f nA", Inoise*1E+9);

Inoisen=sqrt(Isn^2+Itn^2+Idn^2);
mprintf("\nBandwidth value of noise current for an MF-432 PIN photodiode = %.3f pA/Hz", Inoisen*1E+12);
