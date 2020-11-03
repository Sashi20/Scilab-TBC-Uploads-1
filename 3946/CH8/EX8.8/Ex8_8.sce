//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 100;            //(N)
alpha = 30;             //(degrees)(Angle at which the plane is inclined)
mu = 0.25;           //(Coefficient of friction)
phi = atand(mu);

//Magnitude of force to keep the object in position:
F = W * tand(alpha - phi);           //(N)
printf("Magnitude of force to keep the object in position = %.2f N",F);    //The answers vary due to round off error
