//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 20;     //(mm)(Radius)
h = 60;     //(mm)(Height)
//Centre of gravity of the composite section:
//(i) Right circular cone:
v1 = (%pi/3) * r^2 * h;     //(mm^3)
y1 = h * (3/4);            //(mm)

//(ii) Hemisphere:
v2 = (2*%pi/3) * r^3;       //(mm^3)
y2 = h + (3 * r)/8;       //(mm)

//Distance between centre of gravity of the body and apex of the cone:
y_bar = (v1*y1 + v2*y2)/(v1 + v2);     //(mm)
printf("Distance between centre of gravity of the body and apex of the cone = %.2f mm\n",y_bar);

//Depth of the section plane below the apex:
//Radius of the cut out cone:
//r = h/3

//Volume of the cut out cone:
//v3 = (%pi/3) * r^2 * h = 0.1164 * h^2    (mm^3)

//Distance between centre of gravity of the cut out cone and its apex:
//y3 = 0.75*h

////Distance between the centre of gravity of the body and apex of the cone (54 + 5 = 59 mm):
// y_bar = (v1*y1 + v2*y2 - v3*y3)/(v1 + v2 - v3);

//Solving:
//h^4 - 78.67*h^3 = -2399200     -(i)

h = poly(0,"h");
p = h^4 - 78.67*h^3 + 2399200;
x = roots(p);
printf("Depth of the section plane below the apex = %.2f mm",x(2));    //(The answers vary due to round off error)
