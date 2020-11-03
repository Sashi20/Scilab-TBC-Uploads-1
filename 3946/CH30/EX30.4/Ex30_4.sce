//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 100;      //(N)(Weight hung from the lever)
L = 1.2;      //(m)(Distance between weight and pulley)
N = 150;      //(r.p.m.)(Shaft speed)

//Brake power of the engine:
BP = [[(2*%pi*N) * (W * L)]/60]/1000;    //(kW)
printf("Brake power of the engine = %.2f kW",BP);
