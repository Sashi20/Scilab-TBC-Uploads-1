//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT
//EXAMPLE 17.6 OVERHEATING ELECTRONICS
clear;
clc;
m=23*10^-3; //mass of silicon in grams
dQ_by_dT=7.4*10^-3; //rate of energy transfer in J/sec
c=705*10^-3; //specific heat capacity of silicon in J/g.K
dT_by_dt=(dQ_by_dT)/(m*c); //rate of temperature change in K/sec
disp(dT_by_dt,'Rate of temperature increase in K/sec: '); //answer vary due to roundoff error
