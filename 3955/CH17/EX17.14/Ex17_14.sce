//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.14 HEAT TRANSFER BY RADIATION
clc;
clear;
L=0.1; //length of plate in meters
T=1073; //temperature of plate in K
e=0.6; //emissivity of plate
A=2*(L^2); //total surface area of plate in m^2;
sigma=5.67*10^-8; //stefan boltzmann constant in W/m^2.K^4
H=A*e*sigma*T^4; //radiative heat loss in J/sec
disp(H,'Radiative heat loss from the plate in J/s: '); //answer vary due to roundoff error
