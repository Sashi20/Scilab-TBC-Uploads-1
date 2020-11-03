//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 50;      //(kg)(Mass of body)
ge = 9.8;    //(m/s^2)(Acceleration due to gravity on earth)
gm = 1.7;    //(m/s^2)(Acceleration due to gravity on moon)
gs = 270;    //(m/s^2)(Acceleration due to gravity on sun)

//(a) Weight of the body on the Earth:
F1 = m * ge;      //(N)
printf("Weight of the body on the Earth = %.2f N\n",F1);

//(b) Weight of the body on the moon:
F2 = m * gm;     //(N)
printf("Weight of the body on the moon = %.2f N\n",F2);

//(c) Weight of the body on the sun:
F3 = [m * gs]/1000;    //(N)
printf("Weight of the body on the sun = %.2f kN",F3);
