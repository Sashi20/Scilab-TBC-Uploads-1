//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the motion of the train from A to B:
s1 = 1;        //(km)(Distance travelled)
u1 = 30;       //(km.p.h.)(Initial velocity)
v1 = 15;       //(km.p.h.)(Final velocity)

//Let t1 = Time taken by the train to move from A to B.
t1 = 2/(u1 + v1) * 60;    //(min)(Converting from hr to min)

//Considering motion of the train from B to C:
s2 = 0.5;       //(km)(Distance travelled)
u2 = 15;        //(km.p.h.)(Initial velocity)
v2 = 30;        //(km.p.h)(Final velocity)

//Let t2 = Time taken by the train to move from B to C.

t2 = (1/(u1 + v1))*60;    //(min)(Converting from hr to min)

//Total time:
T = t1 + t2;         //(min)

//If the train had moved uniformly with a velocity of 30 km/hr, then the time required to cover 1.5 km:
s = 30;                  //(km/hr)
d = 1.5;                 //(km)
t = (60/s)*d;       //(min)

//Time lost:
TL = T - t;       //(min)
printf("Time lost = %.2f min",TL);
