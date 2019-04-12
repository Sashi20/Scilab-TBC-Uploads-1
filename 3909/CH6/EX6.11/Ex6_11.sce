clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.11
//calculation of distance travelled by in one mean time
//given data
T0=2*10^-6; //mean life (in s)
v=2.994*10^8; //speed of particle (in m/s)
c=3*10^8; //speed of light (in m/s)
//calculation
T=T0/sqrt(1-v^2/c^2); //time (in s) taken by a particle 
d=T*v; //distance travelled (in m) by in one mean time
printf("\ndistance travelled by in one mean time is %0.2f km",d*10^-3)
//the answers vary due to round off error
