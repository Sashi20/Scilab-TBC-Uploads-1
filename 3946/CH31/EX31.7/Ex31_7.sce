//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 6;    //(kg)(Mass of the body)
M = 60;   //(kg)(Mass of the solid disc)
D = 50;   //(cm)(Diameter of the disc)
s = 15;   //(m)(Distance)
g = 9.8;  //(m/s^2)(Accn due to Gravity)
u = 0;    //(Initial velocity)

//(i) Acceleration of the descending mass:
a = (2*m*g)/(2*m + M);     //(m/s^2)
printf("Acceleration of the descending mass = %.2f m/s^2\n",a);

//(ii) Pull in the rope:
P = (M*m*g)/(2*m + M);    //(N)
printf("Pull in the rope = %.2f N\n",P);

//(iii) Velocity after the mass has descended 15 m:
//Let v = Velocity after the mass has descended 15 m.
//Using: v^2 = u^2 + 2*a*s;
v = sqrt(u^2 + 2*a*s);
printf("Velocity after the mass has descended 15 m = %.2f m/s",v);
