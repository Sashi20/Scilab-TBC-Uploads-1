//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 100;     //(kg)(Mass of the body)
a = -0.8;    //(m/s^2)(Acceleration)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//(a) When the lift is moving upwards:
F1 = m * (g + a);      //(N)
printf("Force exerted by the body on the floor of the lift when the lift is moving upwards = %.2f N\n",F1);

//(b) When the lift is moving downwards:
F2 = m * (g - a);     //(N)
printf("Force exerted by the body on the floor of the lift when the lift is moving downwards = %.2f N",F2);
