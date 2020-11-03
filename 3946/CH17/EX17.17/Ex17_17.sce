//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the upward motion of the first stone:
u = -49;   //(m/s)(Initial velocity)
v = 0;     //(Final velocity)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//t = Time taken by the stone to reach the maximum height;
t = (v-u)/(g);      //(s)

//Total time of flight:
T = 2*t;             //(s)

//Considering the second stone:
//Time taken by the second for going upwards and coming back to the earth:
t2 = T - 2;          //(s)

//Time taken by the stone to reach the maximum height:
T2 = t2/2;            //(s)

//Considering the upward motion of the second stone:
u = g*T2;           //(m/s)
printf("The velocity with which the second stone was thrown upwards = %.2f m/s",u);
