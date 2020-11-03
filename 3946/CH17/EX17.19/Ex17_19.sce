//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T1 = 5.64;         //(s)(Total time taken by first stone)
T2 = 3.6;          //(s)(Time taken by second stone)

g = 9.8;           //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of the stones.
//Considering the upward motion of the first stone from the top of the tower:
//Time taken by the first stone to reach maximum height and then to reach the top of the tower:
TT1 = T1 - T2;        //(s)

//Time taken by the second stone to reach maximum height:
TT2 = TT1/2;            //(s)

//Final velocity of the stone:
v = g*TT2;            //(m/s)

//Height of the tower:
u = 10;       //(m/s)(Initial velocity)
t = 3.6;      //(s)(Time)
s = u*t + (1/2)*g*T2^2;     //(m)
printf("Initial velocity of the stones = %.2f m/s\n",u);
printf("Height of the tower = %.2f m",s);
