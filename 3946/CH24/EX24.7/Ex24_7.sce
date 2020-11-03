//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 800;      //(tonnes)(Mass of electric train)
Fr = 80;      //(kN)(Resistance to motion)
Ft = 200;     //(kN)(Transitive force)
v = 25;       //(m/s)(Final velocity)
u = 0;        //(m/s)(Initial velocity)

//Let t = Time taken by the electric train.

//Net force available to move the train:
F = Ft - Fr;     //(kN)

//Acceleration of the train:
a = F/m;        //(m/s^2)

//Using: v = u + a * t;
t = (v - u)/a;     //(s)
printf("Time taken by the electric train = %.2f s",t);    //The answers vary due to round off error
