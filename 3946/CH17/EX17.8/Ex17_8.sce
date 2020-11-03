//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
uA = 0;         //(Initial velocity of train A)
aA = 0.2;       //(m/s^2)(Uniform acceleration of train A)
vA = 12.5;      //(m/s)(Final velocity of train A)

uB = 0;         //(Initial velocity of train B)
aB = 0.4;       //(m/s^2)(Uniform acceleration of train B)
vB = 20;        //(m/s)(Final velocity of train B)

//tA = Time taken by the train A to attain a speed of 12.5 m/s,
//T = Time in second when the train B will overtake the train A from its start.

tA = vA/aA;           //(s)

//Distance travelled by the train A to attain the speed:
s1 = uA*tA + (1/2)*aA*tA^2;         //(m)

tB = vB/aB;               //(s)

//Distance travelled by the train B to attain this speed:
s2 = uB*tB + (1/2)*aB*tB^2;         //(m)

//Train A has travelled for (T + 60) seconds. Total distance travelled by the train A during this time:
//sA = 390.6 + 12.5*[(T + 60) - 62.5]       (m)  -(1)

//Total distance travelled by the Train B:
//sB = 500 + 20*(T - 50)     (m)       -(2)

//(1) = (2):
T = 859.3/7.5;        //(s)
printf("Train B will overtake train A at %.2f s",T);    //The answers vary due to round off error
