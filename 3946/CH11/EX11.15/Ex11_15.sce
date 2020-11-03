//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T2 = 20;         //(No. of teeth of pinion)
T4 = 25;
T1 = 50;         //(No. of teeth of spur wheel)
T3 = 60;
l = 0.5;         //(m)(Length of the handle)
r = 0.25;        //(m)(Radius of the load drum)
eta = 0.6;         //(Efficiency)
W = 720;         //(N)(Load to be lifted)

//Let P = Effort required in newton to lift the load
VR = (l/r)*(T1/T2)*(T3/T4);   //(Velocity ratio)
//MA = W/P = 720/P;           //(Mechanical advantage)
//eta = (720/P)/12;             //(Efficiency)
P = W/(VR * eta);              //(N)(Effort required in newton to lift the load)
printf("Effort required in newton to lift the load = %.2f N",P);
