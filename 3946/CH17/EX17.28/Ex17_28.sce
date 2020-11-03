//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 0;          //(Initial velocity)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Distance travelled in first three seconds = Distance travelled in nth second;

//Let n = Time of travel for the body;

//Distance travelled in first 3 s:
t = 3;     //(s)
s = u*t + (1/2)*g*t^2;    //(1)

//Distance travelled in the nth second after it starts:
//sn = u + (g/2)*(2*n - 1) = (g/2)*(2*n - 1);    -(2)

//Equating (1) and (2):
//n - [(s*2)/g + 1]/2 = 0;
A = [1];
c = [-[(s*2)/g + 1]/2];
[n,nsA] = linsolve(A,c);

printf("Time of travel of the body = %.2f s",n);
