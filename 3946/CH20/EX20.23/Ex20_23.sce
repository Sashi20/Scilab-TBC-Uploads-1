//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 10;        //(m/s)(Velocity of projection)
alpha = 35;    //(Degrees)(Angle of projection with the horizontal)
Beta = 15;        //(Degrees)(Inclination of the plane)

//Time of flight when the ball is projected upwards:
t1 = (2*u*sind(alpha - Beta))/(g*cosd(Beta));     //(s)
printf("Time of flight when the ball is projected upwards = %.2f s\n",t1);

//Time of flight when the ball is projected downwards:
t2 = (2*u*sind(alpha + Beta))/(g*cosd(Beta));      //(s)
printf("Time of flight when the ball is projected downwards = %.2f s",t2);
