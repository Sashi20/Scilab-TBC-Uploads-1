//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

AB = 2.5;     //(m)(Length of machine component)
H = 1;       //(m)(Height of the component)
theta = 30;      //(degrees)(Inclination)
W = 100;     //(N)(Weight of the component)

//P = Weight supported by the man at A
//Q = Weight supported by the man at B
//C = Point where the vertical line through the centre of gravity cuts the lower face
//Joining G(centre of gravity) with M(mid-point of AB)

//From geometry:
GM = 1/2;       //(m)
AM = 2.5/2;     //(m)
AC = AM - GM * tand(theta);
CB = AB - AC;   //(m)

//P + Q = 100              (1)
//And P * CA = Q * CB      (2)
//From (1) and (2):
P = (W*CB)/(CB+AC);               //(N)
Q = W - P;            //(N)

printf("Weight supported by the man at A = %.2f N\n",P);    //(The answers vary due to round off error)
printf("Weight supported by the man at B = %.2f N",Q);
