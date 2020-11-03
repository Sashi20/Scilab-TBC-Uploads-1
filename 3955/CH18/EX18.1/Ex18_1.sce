//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 18: THERMAL PROPERTIES OF MATTER
//EX 18.1: VOLUME OF AN IDEAL GAS AT STP
clc;
clear;
T=273.15; //given temperature of ideal gas in K
P=1.013*10^5; //given pressure of ideal gas in Pa
n=1; //given no. of moles of ideal gas
R=8.314; //universal gas constant in J/K.mol
V=(n*R*T)/P; //volume of ideal gas at STP in m^3
V=V*1000; //volume of ideal gas at STP in litres
printf('Volume of an ideal gas at STP: %f litres',V);
