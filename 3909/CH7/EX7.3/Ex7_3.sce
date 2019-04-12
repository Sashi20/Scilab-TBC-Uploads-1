clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.3
//calculation of gas multiplication factor
//given data
E0=5*10^3; //energy (in eV) of charged particles
W=26.2; //energy (in eV) required per ion pair
e=1.6*10^-19; //electronic charge (in C)
C=200*10^-12; //capacitance (in F)
V=10^-2; //voltage (in V) (printing mistake in book)
//calculation
n0=E0/W; //number of original ion pairs generated
M=(V*C)/(n0*e); //gas multiplication factor
disp(M,'gas multiplication factor is')
