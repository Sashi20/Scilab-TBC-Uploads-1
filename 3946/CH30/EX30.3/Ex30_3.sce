//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 1.2;       //(m)(Diameter of flywheel)
d = 0.0125;    //(m)(Diameter of rope)
N = 200;       //(r.p.m.)(Engine speed)
w = 600;       //(N)(Dead load on brake)
S = 150;       //(N)(Spring balance reading)

//Brake power of the engine:
BP = [[(w - S) * %pi * (D + d) * N]/60]/1000;     //(kW)
printf("Brake power of the engine = %.2f kW",BP);
