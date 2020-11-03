//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 65;      //(kg)(Mass of the body)
F = 800;     //(N)(Force)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Let a = Acceleration of the elevator.
//F = m * (g + a)

a = F/m - g;    //(m/s^2)
printf("Acceleration of the elevator = %.2f m/s^2",a);
