//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 200;        //(mm)(Outer diameter)
R = 100;        //(mm)(Outer radius)
d = 120;        //(mm)(Inner diameter)
r = 60;         //(mm)(Inner radius)

//Moment of Inertia about the base AB:
Iab = 0.393 * (R^4 - r^4);       //(mm^4)
printf("Moment of Inertia about the base AB = %.2f mm^4",Iab);    //The answers vary due to round off error
