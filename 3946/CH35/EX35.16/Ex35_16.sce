//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 3;    //(m)(Length of bulkhead)

//Resultant pressure on bulkhead:
w1 = 9.8 * 0.78;    //(kN)
w2 = 9.8 * 0.88;    //(kN)
H1 = 1.8;      //(m)
H2 = 0.9;      //(m)
BO = 13.76;    //(m)
OE = 7.76;     //(m)

//Pressure BO:
PBO = w1 * H1;     //(kN/m^2)

//Pressure OE:
POE = w2 * H2;     //(kN/m^2)

//Pressure per metre length of the bulkhead:
P = (1/2)*(PBO * H1) - (1/2)*(POE * H2);   //(kN)

//Resultant pressure on 3 m long bulkhead:
P3 = 3 * P;     //(kN)
printf("Resultant pressure on 3 m long bulkhead = %.2f kN\n",P3);

//Position of the resultant pressure:
//Let hh = Height of the point of the resultant pressure from O.

//Taking moments of all the pressures anout O, and equating the same:
h_bar = [[(1/2)*(BO * H1) * 0.6] - [(1/2)*(OE * H2)*0.3]]/P;
printf("Height of the point of the resultant pressure from O = %.2f m",h_bar);
