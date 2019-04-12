clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.11
//calculation of efficiency of laser
//given data
C=1000*10^-6; //capacitance (in Farad)
V=4000; //voltage (in volts)
E=10; //energy (in Joule)
//calculation
opo=E; //optical power output 
ip=1/2*C*V^2; //input power
nu=opo/ip; //efficiency of laser
printf ("\nefficiency of laser is %0.3f percent",nu*100)
