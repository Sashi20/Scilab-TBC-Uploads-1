//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 0;      //(Initial velocity)
s = 65;     //(m)(Height of the building)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Let v = Final velocity of the stone with which it will hit the ground.
v = sqrt(u^2 + 2*g*s);      //(m/s)
printf("Final velocity of the stone with which it will hit the ground = %.2f m/s",v);    //The answers vary due to round off error
