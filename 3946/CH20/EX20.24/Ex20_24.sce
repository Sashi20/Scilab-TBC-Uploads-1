//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 30;        //(m/s)(Velocity of projection)
alpha = 55;    //(Degrees)(Angle of projection with the horizontal)
Beta = 20;        //(Degrees)(Angle of plane)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Maximum range:
//For maximu range, angle of projection:
alpha = 180/4 + Beta/2;    //(Degrees)

printf("alpha = %2.f degrees\n",alpha);
printf("Since the given angle of projection is 55 degrees, therefore the range up the plane is maximum one for the given plane.\n")

//Range of the projectile:
R = (u^2)/(g * cosd(Beta)^2) * [ sind(2*alpha - Beta) - sind(Beta)];       //(m)
printf("Range of the projectile = %.2f m\n",R);

//Time of flight:
t = (2*u*sind(alpha - Beta))/(g * cosd(Beta));     //(s)
printf("Time of flight = %.2f s",t);
