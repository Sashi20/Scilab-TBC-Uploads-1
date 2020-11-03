//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
L = 20;      //(m)(Length of the cable)
w = 25;      //(N/m)(Weight of the cable)
yc = 5;      //(m)(Central dip)

//Distance between the two supports:
//D = Distance between the two supports.
//psi = Angle which the tangent at B makes with the X-X axis:
//c = Parameter of the catenary.

//For the support B:
s = 10;         //(m)
//y = (5 + c);
//Substituting the above values in the general equation of the catenary:
//y^2 = c^2 + s^2;
c = 7.5;       //(m)

//Horizontal pull at C:
H = w*c;      //(N)

//Vertical reaction at B:
VB = w*s;     //(N)

psi = atand((w*s)/H);    //(Degrees)

//Distance between the two supports:
D = 2*[2.3*c*log10(secd(psi) + tand(psi))];     //(m)
printf("Distance between the two supports = %.2f m\n",D);

//Maximum tension in the cable:
//Tension in the cable A:
T = w*(yc + c);       //(N)
printf("Maximum tension in the cable = %.2f N",T);
