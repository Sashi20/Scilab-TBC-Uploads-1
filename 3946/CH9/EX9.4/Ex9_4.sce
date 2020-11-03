//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 3;    //(m)(Length of the ladder)
W = 200;  //(N)(Weight of the ladder)
uw = 0.25;    //(Coefficient of friction between the wall and the ladder)
uf = 0.35;    //(Coefficient of friction between the floor and ladder)
alpha = 60;     //(degrees)(Angle at A)

//(i) Horizontal force (P) applied to the ladder at floor level to prevent slipping:

//Resolving the forces horizontally:
//P + Ff = Rw                         -(i)

Rf1 = 1000;          //(N)(Top reaction force)
Fw1 = 200;           //(N)(Force at centre)

//Resolving the forces vertically:
//Rf + Fw = 1000 + 200 = 1200         -(ii)

//Taking moments about A and equating the same:
//1100 = Fw + Rw*tand(60)             -(iii)

//Also: Fw = uw * Rw = 0.25*Rw
//Substituting this in equation (iii):
Rw = 1100/(0.25 + tand(alpha));      //(N)

Fw = 0.25*Rw;         //(N)

//Substituting Fw in (ii):
Rf = (Rf1 + Fw1) - Fw;       //(N)
Ff = uf * Rf;         //(N)

//Substituting Ff in equation (i):
P = Rw - Ff;         //(N)
printf("The horizontal force P to be applied to ladder at the floor level to prevent slipping = %.2f N\n",P);

//(ii) Inclination of the ladder with the horizontal for no slipping:
//Resolving the forces horizontally:
//Rw = Ff = uf * Rf;      -(iv)

//Resolving the forces vertically:
//Rf + Fw = 1000 + 200 = 1200      (N)

//Fw = uw * Rw = 0.09*Rf
Rf = (Rf1 + Fw1)/(1 + uf * uw);     //(N)

Rw = uf * Rf;     //(N)
Fw = (uf * uw) * Rf;     //(N)

//Taking moments about A and equating the same:
alpha = atand((1100 - Fw)/Rw);   //(Degrees)
printf("Inclination of the ladder with the horizontal for no slipping = %.2f degrees",alpha);
