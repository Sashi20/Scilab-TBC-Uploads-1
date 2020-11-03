//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
s = 750;       //(m)(Total distance travelled)

//Considering the motion of cage from O to A:
u1 = 0;        //(Initial velocity)
s1 = s/4;    //(m)(Distance travelled)

//Let a1 = Constant acceleration of the cage,
//v1 = Uniform velocity of the cage (AD or BE)

//Area of the triangle OAD(s1):
//t1 * v1 = 187.5 * 2;    -(1)

//Considering the motion of the cage from A to B:
s2 = s - (2 * s1);     //(m)

//Area of the triangle ABED(s2):
//t2 * v2 = 375;          -(2)

//From equation (1) and (2):
//t1 = t2 = t3;
//Since t1 + t2 + t3 = 45;
t1 = 15;    //(s)
t2 = 15;    //(s)
t3 = 15;    //(s)

//Considering the motion of the  cage from O to A:
u1 = 0;         //(Initial velocity)
s1 = 187.5;     //(m)(Distance travelled)
t1 = 15;        //(s)(Time)

a1 = (s1*2)/(t1^2);       //(m/s^2)

//Speed of the cage while traversing the central portion of the shaft:
v1 = u + a1*t1;     //(m/s)
u = 0;
printf("Speed of the cage while traversing the central portion of the shaft = %.2f m/s",v1);
