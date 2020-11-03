//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.11 CONDUCTION INTO A PICNIC COOLER
clear;
clc;
k=0.027; //heat conductivity in W/m.k
L=0.02; //length in meters
A=0.8; //area in m^2
T_H=30; //higher temperature in celsius
T_C=0; //lower temperature in celsius
H=k*A*(T_H-T_C)/L; //heat current in J/s
disp(H,'Heat current in J/sec: ');
t=10800; //time in second
Q=H*t; //heat transfer in 3 hrs
L_f=3.34*10^5; //heat of fusion in J/kg
m=Q/L_f; //mass of ice melts
disp(m,'Mass of ice that melts in kg: '); //answer vary due to roundoff
