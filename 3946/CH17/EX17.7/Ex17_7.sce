//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Considering the motion of the train between the first and second kilometre stones:

s = 1000;        //(m)(Distance)
u1 = 5;           //(m/s)(Initial velocity)
v1 = 10;          //(m/s)(Final velocity)

//Velocity with which the train passes the third km stone:
//v^2 = u^2 + 2*a*s;
a = (v1^2 - u1^2)/(2*s);       //(m/s^2)

//Considering the motion of the train between the second and third kilometre stones:
s = 1000;      //(m)(Distance)
u2 = 10;        //(m/s)(Initial velocity)
v2 = sqrt(u2^2 + 2*a*s);          //(m/s)
V = v2*(3600/1000);              //(km.p.h)(Converting from m/s to km.p.h)

printf("Velocity when it passes the third kilometre stone = %.2f km.p.h\n",V);    //The answers vary due to round off error

//Time taken for each of the two intervals of one kilometre:
//t1 = Time taken by the train to travel tthe first one kilometre,
//t2 = Time taken by the train to travel the second kilometre.

t1 = (v1 - u1)/a;       //(s)
t2 = (v2 - u2)/a;    //(s)

printf("Time taken by the train to travel the first one kilometre = %.2f s\n",t1);
printf("Time taken by the train to travel the second kilometre = %.2f s",t2);
//The answers vary due to round off error
