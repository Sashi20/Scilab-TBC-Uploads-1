clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.17
//calculation of distance travelled 
//given data
T0=2.0*10^-8; //half life (in s)
v_by_c=0.96; //speed of mason is 0.967 times speed of light
c=3*10^8; //speed (in m/s) of light
//calculation
v=0.96*c; //speed of mason is 0.96 times speed of light
T=T0/sqrt(1-v_by_c^2); //half-life (in s) 
d=v*T; //distance (in m) 
printf("\ndistance travelled is %0.2f m",d)
//the answers vary due to round off error
