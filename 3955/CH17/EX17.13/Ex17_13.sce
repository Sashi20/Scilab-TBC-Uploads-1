//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.13 CONDUCTION THROUGH TWO BARS-II
clear;
clc;
L=0.02; //length of each bar in m
A=L*L; //area of cross section of each bar in m^2
T_H=100; //higher temperature in celsius
T_c=0; //lower temperature in celsius
L_s=0.1; //length of steel bar in meters
L_cu=0.2; //length of copper bar in meters
K_s= 50.2; //thermal conductivity of steel in W/m.K
K_cu=385; //thermal conductivity of copper in W/m.K
H_s=K_s*A*(T_H-T_c)/L_s; //heat current in steel in J/s
H_cu=K_cu*A*(T_H-T_c)/L_cu; //heat current in cupper in J/s
H=H_s+H_cu; //total heat current in J/s
disp(H,'Total heat current in two bars in J/s: ');
