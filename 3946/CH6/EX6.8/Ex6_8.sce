//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the body is symmetrical about Y-Y axis, therefore its centre of gravity will lie on this axis as shown in Fig. 6.18. Let bottom of the hemisphere (D) be the point of reference.
//(i) Hemisphere:
r = 30;                   //(mm)(Radius)
v1 = 2*%pi/3 * r^3;      //(mm^3)
y1 = 5*r / 8;            //(mm)

//(ii) Right circular cone:
h = 40;                       //(mm)(Height)
v2 = %pi/3 * r^2 * h;       //(mm^3)
y2 = r + h/4;               //(mm)

//The distance between centre of gravity of the body and bottom of hemisphere D:
y_bar = ((v1 * y1) + (v2 * y2))/(v1 + v2);      //(mm)
printf("The distance between centre of gravity of the body and bottom of hemisphere D = %.2f mm",y_bar);     //The answers vary due to round off error
