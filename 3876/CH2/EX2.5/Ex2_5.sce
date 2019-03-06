//Windows 10
// Scilab 6.0.0

//Chapter 2 Gases

clc;
clear;

//Initialisation of Variables
N=7   //nitrogen in grams
O=16   //oxygen in grams
H=3.03   //hydrogen in grams
R=0.0821  //gas constant in liter
T=273     //temperature in kelvin
t=50      //temperature in celsius
l=80     //capacity of vessel in liters
M1= 28 //gram per mole for nitrogen
M2= 32 //gram per mole for oxygen
M3= 2.02 //gram per mole for hydrogen

//CALCULATIONS
pN2=(N*R*(T+t))/(M1*l)
pO2=(O*R*(T+t))/(M2*l)
pH2=(H*R*(T+t))/(M3*l)
Tp=pN2+pO2+pH2
Tm=(N/M1)+(O/M2)+(H/M3)
Nm=0.25/Tm
pN21=Nm*Tp
Om=0.50/Tm
pO21=Om*Tp
Hm=1.5/Tm
pH21=Hm*Tp
Tpc=pN21+pO21+pH21

//RESULTS
mprintf("Individual partial pressures are:")
mprintf("\nPN2=%.3f atm",pN2)
mprintf("\nPO2=%.3f atm",pO2)
mprintf("\nPH2=%.3f atm",pH2)
mprintf("\n The total pressure is: %.3f atm",Tp)
mprintf("\n The total number of moles is: %.2f moles",Tm)
mprintf("\nTotal pressure multiplied by mole fraction: %.3f atm",Tpc)

//The difference in the solution compared to textbook is due to round off error:
//PH2 is being taken as 0.498 in the textbook whereas it is being calculated as 0.497 in the code
