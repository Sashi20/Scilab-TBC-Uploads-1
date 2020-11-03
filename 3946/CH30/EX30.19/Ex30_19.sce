//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.03;    //(kg)(Mass of bullet)
M = 10;      //(kg)(Mass of body)
g = 9.8;     //(m/s^2)(Acn due to Gravity)
H = 0.8;     //(m)(Height)
theta = 30;  //(degrees)(Angle made at the roof)

//Let u = Initial velocity of the bullet,
//v = Velocity of the body after impact.

//From geometry:
h = H - H*cosd(theta);      //(m)

//Kinetic energy of the body and bullet after impact:
//KE = 5.015*v^2            (N-m)        -(i)

//Potential energy of the body B:
PEB = (m + M)*g*h;           //(N-m)     -(ii)

//Equating (i) and (ii):
v = sqrt(PEB/((m + M)/2));        //(m/s)

//Momentum of the body and bullet just after impact:
MM = (M + m)*v;            //(kg-m/s)   -(iii)

//Momentum of the bullet just before impact:
//MB = 0.03*u                //(kg-m/s)   -(iv)

//Equating (iii) and (iv):
u = MM/m;                    //(m/s)
printf("Initial velocity of the bullet = %.2f m/s",u);
//The answers vary due to round off error
