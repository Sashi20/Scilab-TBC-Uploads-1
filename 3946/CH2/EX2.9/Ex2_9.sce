//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FP = 1000;    //(N)(Force at P)
FQ = 1500;    //(N)(Force at Q)
FR = 1000;    //(N)(Force at R)
FS = 500;     //(N)(Force at S)

alpha = 90;   //(degrees)(Angle at P)
beta = 60;    //(degrees)(Angle at Q)
phi = 45;     //(degrees)(Angle at R)
psi = 30;   //(degrees)(Angle at S)

//Resolving all the forces horizontally:
H = FP*cosd(alpha) + FQ*cosd(beta) + FR*cosd(phi) + FS*cosd(psi);             //(N)

//Resolving all the forces vertically:
V = FP*sind(alpha) + FQ*sind(beta) + FR*sind(phi) + FS*sind(psi);              //(N)

Resultant = (H^2 + V^2)^(1/2);              //(N)
printf("Magnitude of resultant = %.2f N\n",Resultant);     //The answers vary due to round off error

//Let theta be the angle of the resultant with PS.
//tan(theta) = V/H;
theta = atand(abs(V/H));
printf("Angle of resultant = %.2f degrees\n",theta);

//Since both H and V are positive the resultant lies between 0 degree and 9 degrees.

//Let x = distance between P and the line of action of the resultant force.
//Taking moments of the vertical components of the forcesand the resultant about P, and equating the same:

//3256 * x = (FP*0) + (FQ*0.866) + (FR*0.707)*8 + (FS * 0.5)*12 = 13852;
x = (FP*sind(alpha) + FQ*sind(beta)*4 + FR*sind(phi)*8 + FS*sind(psi)*12)/V;
printf("Position of the resultant = %.2f m",x);    //(The answers vary due to round off error)
