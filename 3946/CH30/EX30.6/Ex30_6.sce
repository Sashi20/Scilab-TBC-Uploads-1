//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 10;     //(m/s)(Speed of the motor boat)
R = 600;    //(N)(Resistance)

//Work done by the boat in one second:
W1 = (R * v)/1000;       //(kJ/s)

//Power:
P = W1;                  //(W)

printf("Power of the boat engine = %.2f kW",P);
