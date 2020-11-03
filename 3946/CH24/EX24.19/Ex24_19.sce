//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.02;         //(kg)Mass of the bullet)
v = 300;          //(m/s)(Velocity of the bullet)
M = 100;          //(kg)(Mass of the carriage with gun)
F = 20;           //(N)(Resistance to sliding)

//(a) Velocity, with which the gun will recoil:
//Let V = Velocity with which the gun will recoil.

//M*V = m*v         (Conservation of Energy)
V = (m * v)/M;         //(m/s)
printf("Velocity with which the gun will recoil = %.2f m/s\n",V);

//(b) Distance, in which the gun comes to rest:
u = 0.06;     //(m/s)(Initial velocity)
v = 0;        //(Final velocity)

//a = Retardation of the gun,
//s = Distance in which the gun comes to rest.

a = F/M;     //(m/s^2)

//v^2 = u^2 - 2*a*s
s = u^2/(2 * a);      //(m)
printf("Distance in which the gun comes to rest = %.2f mm\n",s*1000);

//(c)Time taken by the gun in coming to rest:
//Using: v = u + a*t;
t = u/a;           //(s)
printf("Time taken by the gun in coming to rest = %.2f s",t);
