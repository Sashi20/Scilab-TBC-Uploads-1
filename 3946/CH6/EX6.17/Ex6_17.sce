//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//(i) Right circular cone OCD:
R = 1;                        //(m)(Radius)
H = 4;                        //(m)(Height)
v1 = %pi/3 * R^2 * H;         //(m^3)
y1 = 4/4;                       //(m)

//(ii) Right circular cone OAB:
r = 0.5;                       //(m)(Radius)
h = 2;                         //(m)(Height)
v2 = %pi/3 * (r)^2 * h;        //(m)
y2 = h + h/4;                  //(m)

//(iii) Circular hole:
d = 0.5;                       //(m)(radius)
v3 = %pi/4 * d^2 * h;      //(m^3)
y3 = h/2;                        //(m)

//The distance between centre of gravity of the body and the base of the cone:
y_bar = (v1*y1 - v2*y2 - v3*y3)/(v1 - v2 - v3);       //(m)
printf("The distance between centre of gravity of the body and the base of the cone = %.2f m",y_bar);
