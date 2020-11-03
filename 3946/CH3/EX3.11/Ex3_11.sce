//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 0.2;         //(N/mm)(Weight of lever)
P = 100;         //(N)(Force applied on the effort arm)
a = 200;         //(mm)(Length of the effort arm)
b = 100;         //(mm)(Length of the load arm)

WAB = a * W;      //(N)(Weight of lever AB)

//Taking moments about the hinge B and equating the same:
//T * 100 = (100 * 200) + (40 * 100);
T = ((P * a) + (WAB * b))/(b);         //(N)
printf("Required tension = %.2f N",T);      //The answer provided in the textbook is wrong
