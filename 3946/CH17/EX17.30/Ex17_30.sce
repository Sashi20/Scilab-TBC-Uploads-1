//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n1 = 5;    //(Initial no. of second)
n2 = 6;    //(Final no. of second)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of the ball.

//Distance covere by the ball in the 5 th second after it starts:
//s5 -u + 45;    -(1)

//Distance covere by the ball in the 6 th second after it starts:
//s6 = -u + 55

//Since the distance covered by the ball in the 5 th second is twice the distance covered by it in the 6 th second:
//s5 = 2*s6
u = 110 - 45;     //(ms)
printf("Initial velocity = %.2f m/s",u);
