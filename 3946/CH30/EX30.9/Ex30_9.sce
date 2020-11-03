//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 400;   //(tonnes)(Mass of the locomotive)
v = 54;    //(kmph)(Velocity acquired)
v1 = (v*1000)/3600;    //(m/s)
t = 300;   //(s)(Time)
Fr = 16;   //(kN)(Frictional resistance)
u = 0;     //(Initial velocity)
A = 500;  //(N)(Air resistance)

//Let a = Acceleration of the locomotive train.

//Using: v = u + a*t;
a = (v1 - u)/t;      //(m/s^2)

//Force acquired for this acceleration:
F = m * a;      //(kN)               -(i)
//Air resistance at 54 km.p.h.:
AR = [A * (v/18)^2]/1000;       //(kN)(Converting to kN)     -(ii)

//Total Resistance:
TR = Fr + F + AR;       //(kN)


//Work done in one second:
P = TR * v1;     //(kJ/s)
printf("Power of the engine = %.2f kW",P);
