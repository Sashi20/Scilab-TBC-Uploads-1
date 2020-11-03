//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u1 = 0;       //(Initial velocity of body 1)
u2 = 0;       //(Initial velocity of body 2)
t1 = 3;       //(s)(Time taken by the first body)
t2 = 3 - 1;   //(s)(Time taken by the second body)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Distance covered by the first body in 3 seconds:
h1 = u1*t1 + (1/2)*g*t1^2;     //(m)

//Distance covered by the second body in 2 seconds:
h2 = u2*t2 + (1/2)*g*t2^2;     //(m)

//Separation between the bodies:
S = h1 - h2;        //(m)
printf("Separation between the bodies = %.2f m",S);
