// Exa 8.16
clc;
clear;
close;
//given data
Vin= 2;//in volt
Vout= 10;//in volt
R=100;// in kohm
R=R*10^3;//in ohm
C=0.1;// in  micro F
C=C*10^-6;//in F
// Formula Vout = -1/(R*C)*integrate('Vin','t',0,t) = -Vin*t/(R*C)
t= Vout*R*C/Vin;// in sec
disp(t,"The maximum time upto which the reference voltage can be integrated in second")
disp(t*10^3,"Or in mili seconds ")
