//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha = 30;     //(Degrees)(Angle of projection of both the guns)
vA = 350;       //(m/s)(Velocity of projection of first gun)
vB = 300;       //(m/s)(Velocity of projection of second gun)
d = 30;         //(m)(Distance between the muzzles)

//Let t = Time in seconds, when the two shots meet after they leave the guns,
//x = Horizontal distance between A and C
//y = Vertical distance between A and C

AD = d * cosd(alpha);      //(m)

//x = 350*cosd(30)*t = 175*sqrt(3)*t;   -(1)

//(15*sqrt(3)) = 300*cosd(30)*t = 150*sqrt(3)*t;   -(2)

//(1) + (2):
t = (d*cosd(alpha))/(vA*cosd(alpha) + vB*cosd(alpha));       //(s)
printf("Time in seconds, when the two shots meet after they leave the guns = %.2f s\n",t);    //The answers vary due to roun off error

//Point where the two shots meet:
//Substituting t in (1):
x = vA*cosd(alpha)*t;     //(m)

u = vA*sind(alpha);        //(m/s)(Vertical component of vA)

//Vertical distance between A and C:
y = u*t - (1/2)*g*t^2;      //(m)

printf("Points where the two shots meet: x = %.2f m and y = %.2f m",x,y);
//The answers vary due to roun off error
