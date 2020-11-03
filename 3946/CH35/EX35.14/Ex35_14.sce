//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 10;   //(m)(Length of the vertical side of tank)
h_bar = 1.5;  //(m)(Depth of water)
w = 9.8 * 1;    //(kN/m^3)(Specific weight of water)

//Total pressure exerted on wall:

//Pressure BC:
PBC = w * h_bar;     //(kN/m^2)

//Total pressure per metre length of the storage tank:
TP = (1/2) * h_bar * PBC;    //(kN)

//Total pressure exerted on the 10 m long wall:
P = 10 * TP;             //(kN)
printf("Total pressure exerted on the 10 m long wall = %.2f kN\n",P);    //The answers vary due to round off error

//Point where the pressure acts:
h = (2 * h_bar)/3;    //(m)
printf("Point where the pressure acts = %.2f m from A",h);
