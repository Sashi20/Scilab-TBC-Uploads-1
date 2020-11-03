//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
w = 30;          //(N)(Weight of the plank)
L = 2;           //(m)(Length of the plank)
d = 1.4;         //(m)(Distance between end A and a point B on the plank)

//If the plank is not to topple, then the reaction at A should be zero for the maximum weight at C. Now taking moments about B and equating the same.
//30 * 0.4 = w * 0.6
x = L - d;       //(m)(Distance between B and C)
y = 0.4;         //(m)(Distance between B and the force)
W = (w * y)/(x);
printf("Maximum weight = %.2f N",W);
 
