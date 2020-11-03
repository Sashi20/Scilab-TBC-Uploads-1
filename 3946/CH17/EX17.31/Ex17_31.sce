//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h = 900;       //(m)(Height)
hh = 300;      //(m)(Next height traversed)
//(i) Maximum velocity of the lift:
//t1 = Time of acceleration
//t2 = Time of retardation
//v = Maximum velocity of the lift

//Considering the motion from O to A:
//s1 = Area of the triangle OAL
//900 = (1/2)*t1*v       -(1)

//Considering the motion of the lift from A to B:
//s2 = Area of the triangle ALB
//300 = (1/2)*t2*v      -(2)

//(1) / (2):
//t1 - 3*t2 = 0;      -(3)

//t1 + t2 - 30 = 0;   -(4)

A = [1, -3; 1, 1];
c = [0; -30];
[x0,nsA] = linsolve(A,c);

t1 = x0(1);      //(s)
t2 = x0(2);      //(s)

//Substituting t1 in equation 1:
v = (h * 2)/t1;     //(m/s)
printf("Maximum velocity of the lift = %.2f m/s\n",v);

//(ii) Acceleration of the lift:
a1 = v/t1;          //(m/s^2)
printf("Acceleration of the lift = %.2f m/s^2\n",a1);

//(iii) Retardation of the lift:
a2 = 3*a1;            //(m/s^2)
printf("Retardation of the lift = %.2f m/s^2",a2);
//The answers vary due to round off error
