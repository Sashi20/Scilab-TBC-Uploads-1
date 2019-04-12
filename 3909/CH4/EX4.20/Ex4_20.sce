clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.20
//calculation of number of modes operating in the cavity region
//given data
l=0.5; //separation of laser (in m)
Dg=1.5; //Doppler's gain band width (in Ghz)
c=3*10^8; //speed (in m/s) of light
n0=1; //refractive index of laser
//calculation
del_nu=c*10^-9/(2*l); //frequency (in GHz)
m=Dg/del_nu; //number of modes 
disp(m,'number of modes operating in the cavity region is')
//the answer provided in the textbook is wrong
