//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1000;    //(kN)(Weight of the train)
v = 12.5;    //(m/s)(Speed of the train)

//Resistance due to friction = 1% of the weight of the train

//Frictional resistance:
Fr = (1/100) * W;    //(kN)(1% of weight of train)

//Work done in one second:
P = Fr * v;          //(kW)
printf("Power of the engine = %.2f kW",P);
