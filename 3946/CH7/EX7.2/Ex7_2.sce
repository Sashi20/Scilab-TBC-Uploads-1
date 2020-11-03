//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 60;      //(mm)(External breadth)
d = 80;      //(mm)(External depth)
b1 = 30;      //(mm)(Internal breadth)
d1 = 40;      //(mm)(Internal depth)

Ixx = (b*d^3)/12 - (b1*d1^3)/12;       //(mm^4)
Iyy = (d*b^3)/12 - (d1*b1^3)/12;       //(mm^3)

printf("Ixx = %.2f mm^4\n",Ixx);
printf("Iyy = %.2f mm^4",Iyy);
