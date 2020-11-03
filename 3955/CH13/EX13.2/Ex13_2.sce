//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX 13.2: ACCELERATION DUE TO GRAVITATIONAL ATTARACTION
clear;
clc;
Fg=1.33*10^-10; //given gravitational force in N (refer to Ex13.1)
m1=0.01; //mass of first sphere in kg
m2=0.5; //mass of second sphere in kg
a1=Fg/m1; //acceleration of first sphere in m/s^2
a2=Fg/m2; //acceleration of second sphere in m/s^2
mprintf('Magnitude of acceleration of first sphere: %e m/s^2',a1);
mprintf('\nMagnitude of acceleration of second sphere: %e m/s^2',a2);
