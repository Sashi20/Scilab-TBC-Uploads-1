//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//As the lamina is symmetrical about y-y axis, bisecting the lamina, therefore its centre of gravity lies on this axis. Let O be the reference point. From the geometry of the lamina. Semi-vertical angle of the lamina:
alpha = %pi/6;       //(degrees)
r = 220;             //(mm)(Radius)

//The distance between the reference point O and centre of gravity of the lamina:
y_bar = ((2*r)/3)*(sin(alpha)/alpha);
printf("The distance between the reference point O and centre of gravity of the lamina = %.2f mm",y_bar);    //The answers vary due to round off error
