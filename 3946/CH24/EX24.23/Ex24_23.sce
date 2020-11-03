//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha = asind(0.05);     //(Degrees)
u = 10;                  //(m/s)(Initial velocity)
m = 50;                  //(tonnes)(Mass of the detached wagon)
v = 0;                   //(m/s)(Final velocity)
Tr = 5;                  //(kN)(Track resistance)
g = 9.8;                 //(m/s^2)(Accn due to Gravity)
//Let s = Distance through which the wagon will travel before coming to rest,
//a = Retardation of the rain.

//Resistance to the train due to upgrade:
Fr = m*g*sind(alpha);         //(N)

//Total resistance to the movement of the train:
F = Fr + Tr;         //(kN)

a = F/m;             //(m/s^2)

//Using: v^2 = u^2 + 2*a*s;
s = u^2/(2*a);       //(m)
printf("Distance through which the wagon will travel before coming to rest = %.2f m",s);
