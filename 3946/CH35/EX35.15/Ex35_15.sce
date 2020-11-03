//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
s = 10;    //(m)(Side of the square tank)
d = 1;     //(m)(Depth of tank)
w1 = 9.8 * 1;
w2 = 9.8 * 2;
H1 = 0.5;    //(m)
H2 = 0.5;    //(m)
BF = 4.9;    //(m)

//Magnitude of the resultant force(i.e., pressure):

//Pressure DE:
PDE = w1 * H1;     //(kN/m^2)
PFC = w2 * H2;     //(kN/m^2)

//Pressure per metre length of the tank:
P = (1/2)*(BF * H1) + (H2 * BF) + (1/2)*(w1 * H1);     //(kN/m^2)

//Magnitude of the total pressure on 10 m long wall:
PP = 10 * P;    //(kN)
printf("Magnitude of the total pressure on 10 m long wall = %.2f kN\n",PP);

//Line of action of the resultant force(i.e., pressure):

//Let hh = Depth of the line of action of the resultant pressure from A.

//Taking moments of all the pressures about A, and equating the same:
h_bar = [((1/2)*BF*H1)*(1/3) + (H2*BF)*(3/4) + (1/2)*(w1 * H1)*(5/6)]/P;    //(m)
printf("Depth of the line of action of the resultant pressure from A = %.2f m",h_bar);
