//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 60;    //(tonnes)(Mass of railway engine)
r = 200;   //(m)(Radius of circular path)
v = 10;    //(m/s)(Velocity of engine)

//Force exerted on the rails:
//Pc = (m*v^2)/r

Pc = (m * v^2)/r;    //(kN)
printf("Force exerted on the rails = %.2f kN",Pc);
