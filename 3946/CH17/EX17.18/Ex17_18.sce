//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
H = 50;                 //(m)Height of the tower

//Time taken by the stone to cross each other:
// t = Time taken by the stones to cross each other,

//Top stone:
//s = u*t + (1/2)*g*t^2 = 0.5*g*t^2       -(1)

//Second stone:
//50 - s = u*t + (1/2)*g*t^2 = -25*t + 0.5*g*t^2   -(2)

//(1) + (2):
t = H/25;       //(s)

//Substituting the value of t = 2 in equation (1):
s = 0.5 * g * t^2;       //(m)
printf("Time when the two stones cross each other = %.2f s\n",t);
printf("Point where the stones cross each other = %.2f m",s);
