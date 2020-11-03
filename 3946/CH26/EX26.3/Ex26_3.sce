//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
delta = 0.0005;      //(m)(Deflection)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

//Natural frequency of oscillation:
n = (1/(2*%pi)) * sqrt(g/delta);          //(Hz)
printf("Natural frequency of oscillation = %.2f Hz",n);    //The answers vary due to round off error
