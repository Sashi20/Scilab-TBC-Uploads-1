clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.46
//calculation of work done 
//given data
m0=0.5*10^6; //rest mass (in eV) of an electron 
c=3*10^8; //speed of light (in m/s)
e=1.6*10^-19; //value of charge
//calculation
v1=0.6*c; //speed of electron is 0.6 times speed of light
v2=0.8*c; //speed of electron is 0.8 times speed of light
KE_f=(m0*c^2)/(sqrt(1-(v2/c)^2))-(m0*c^2); //final kinetic energy (in eV)
KE_i=(m0*c^2)/(sqrt(1-(v1/c)^2))-(m0*c^2); //initial kinetic energy (in eV)
WD=KE_f-KE_i; //work done (in eV)
printf("\nwork done is %1.1e J",WD*e)
//the answer provideed in the textbook is wrong
