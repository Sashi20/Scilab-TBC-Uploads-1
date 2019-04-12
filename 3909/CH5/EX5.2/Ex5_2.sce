clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.2
//calculation of velocity of electrons
//given data
d=0.9086*10^-10; //first Bragg maximum (in m)
theta=65; //glazing angle (in degrees)
h=6.6*10^-34; //Planck's constant (in Js)
m_e=9.1*10^-31; //mass of electron (in kg)
//calculation
v=h/(2*d*sin(theta)*m_e); //velocity (in m/s) of electrons
printf("\nvelocity of electrons is %1.2e m/s",v)
//the answers vary due to round off error
