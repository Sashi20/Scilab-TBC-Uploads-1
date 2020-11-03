//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Solving by 1st method
s = 40;     //(m)(Disatnce traversed)
n = 4;      //(No. of second)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of the body.
//Using s = u + (g/2)*(2*n - 1);
u = s - (g/2)*(2*n -1);    //(m/s)
printf("Initial velocity of the body = %.2f m/s",u);
