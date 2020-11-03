//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 20;         //(tonnes)(Mass of the railway engine)
v = 12.5;       //(m/s)(Velocity)
Fr = 1.6;       //(kN)(Frictional Resistance)
eta = 0.8;        //(Efficiency of the engine)

//Work done by the railway engine in one second:
P = Fr * v;     //(kW)

//Since, efficiency = 0.8;
//Actual power:
AP = P/eta;     //(kW)
printf("Power of the engine = %.2f kW",AP);
