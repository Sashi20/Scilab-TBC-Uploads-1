//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.15 RADIATION FROM HUMAN BODY
clear;
clc;
A=1.2; //surface area of body in m^2
T=303; //temperature of body in K
T_s=293; //surrounding temperature in K
e=1; // emissivity of human body
sigma=5.67*10^-8; //stefan boltzmann constant in W/m^2.K^4
H=A*e*sigma*T^4; //radiative heat loss from body in watts
H_net=A*e*sigma*(T^4-T_s^4); //net radiative heat loss from body in watts
disp(H,'Radiative heat loss from body in watts: '); //answer vary due to roundoff error
disp(H_net,'Net radiative heat loss from body in watts: ');
