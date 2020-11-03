//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1200;     //(J)(Work)
t = 8;        //(s)(Time)

//Work done by the engine in one second:
W1 = W/t;    //(J/s)

//Power:
P = W1;     //(W)
printf("Power of the engine = %.2f W",P);
