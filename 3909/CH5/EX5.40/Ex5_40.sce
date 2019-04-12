clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.40
//calculation of number of states available for conduction
//given data
h=6.63*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
E=5*1.6*10^-19; //energy (in joules)
E_dash=5.01*1.6*10^-19; //energy (in joules)
a=10^-2; //edge of copper cube (in m)
//calculation
g_of_E=(8*sqrt(2)*%pi*m^(3/2))/h^3*E^(1/2)*1.6*10^-19; //number of energy states per unit energy
dE=E_dash-E; //energy interval
N=g_of_E*dE*a^3; //number of desired states
del_Eadj=dE/N; //average energy interval between successive level
printf("\nnumber of states available for conduction is %1.0e eV",del_Eadj)
