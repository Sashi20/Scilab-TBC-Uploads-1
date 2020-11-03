//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.10: COMBUSTION,TEMPERATURE CHANGE, PHASE CHANGE
clear;
clc;
m=1; //mass of water in kg
c=4190; //specific heat capacity of water in J/kg.K
T1=20; //initial temperature of water in celsius
T2=100; //final temperature of water in celsius
Q1=m*c*(T2-T1); //heat required to change temp of water from T1 to T2
m=0.25; //mass of water in kg that will boil
L_v=2.256*10^6; //latent heat of vapourization  of water in J/kg
Q2=m*L_v; //heat required for boiling
Q=Q1+Q2; //total heat required
Q_combus=46000; //given heat of combustion of gasoline in J/g
Q_gasoline=Q/0.3; //total heat of combustion of gasoline 
M_gas=Q_gasoline/Q_combus; //mass of gasoline required
disp(M_gas,'Mass of gasoline required in grams: '); //answer vary due to roundoff error
