//Example 35_2
clc;
clear;
close;

//Given data :
c=1500*1000;// Concentration of chloride in the leachate in mg/m^3
c1=200*1000;// Concentration of chloride beneath the linear in mg/m^3
k=1/(10^9);// Permeability of clay in m/sec
D=0.5/(10^9);// Diffusion Coefficient in m^2/sec
n=0.4;// Porosity of clay
i=-1.3/1;// Hydraulic gradient
JA=-k*i*c;// Advective mass flux in mg/m^2 sec
JD=-D*n*(c1-c);// Diffusive mass flux in mg/m^2 sec
JT=(JA+JD)*3.15*(10^7)/1000;// Total mass flux of chloride ions in g/m^2 yr
disp(JT,"Total mass flux of chloride ions in g/m^2 yr");
// The answers vary due to round off error
