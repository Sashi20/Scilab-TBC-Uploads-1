clc;
clear;
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
v=10^5 //velocity in m/s

//calculation
E=(m*v^2)/2 //in J
gam=(2*%pi*sqrt(2*m*E))/h //in m^-1
d=1/(gam*10^-9) //dividing by 10^-9 to convert from m to nm

mprintf("The penetration distance of the electron is = %1.2f nm",d)
