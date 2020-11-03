//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 200;        //(kg)(Mass of hammer)
x = 0.5;        //(m)(Distance through which the pile is driven into ground)
h = 4;          //(m)(Height through which the hammer falls)
g = 9.8;        //(m/s^2)(Acn due to Gravity)

//Average force of resistance of the ground:
R = [(m*g)*(h/x + 1)]/1000;             //(kN)
printf("Average force of resistance of the ground = %.2f kN",R);
