//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering motion of the stone A(i.e., form A to C).
u1 = 0;      //(Initial velocity)
s1 = 100;    //(m)(Distance)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Let t1 = Time taken by the particle A to reach C.

//Distance travelled by the stone A(s1):
t1 = sqrt(s1/((1/2)*g));   //(s)

//Considering motion of the stone B(first from B to D):
u2 = 0;         //(Initial velocity)
s2 = 50;        //(m)(Distance)
//Let t2 = Time taken by the particle B to reach D.

t2 = sqrt(s2/((1/2)*g));      //(s)

//Considering motion of stone B(from D or E to F):
//Time taken by the particle B to reach F:
T = 2*t2;     //(s)

printf("Ratio of the two times = %.2f",T/t1);
