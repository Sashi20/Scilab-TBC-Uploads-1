//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 100;     //(N)(Weight of rod AB)
l = 6;       //(mm)(Length of rod AB)
w1 = 60;     //(N)(Weight of the body supported at A)
w2 = 80;     //(N)(Weight of the body supported at B)

//Let x = Distance between B and the point where the beam should be supported;
//Taking moments of the weights about D and equating the same;
//80 * x = 60 * (6 - x) + 100 * (3 - x);
x = (w1*l + W*l/2)/(w2+w1+W);           //(m)
printf("Distance between B and the point where the beam should be supported = %.2f m",x);
