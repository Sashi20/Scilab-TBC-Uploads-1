//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.5 FEED A COLD, STARVE A FEVER
clear;
clc;
m=80; //mass of body in kg
T_0=37; //initial body temperature in celsius
T=39; //final body temperature in celsius
deltaT=T-T_0; //difference in temperature in celsius OR kelvin
c=4190; //specific heat capacity of water in J/kg.K
Q=m*c*deltaT; //heat required in J
mprintf('Heat required in joules: %e',Q);
