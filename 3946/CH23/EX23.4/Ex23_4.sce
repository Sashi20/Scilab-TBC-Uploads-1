//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 5;    //(m)(Amplitude)
t = 4;    //(s)(Time taken)
y1 = 4;   //(m)(Distance of the point)
y2 = 2;   //(m)(Distance of the point)

//Angular velocity of the particle:
omega = (2 * %pi)/t * (180/%pi);     //(/s)

//Distance: y = r * sind(W * t)
//Substituting the value:
t1 = asind(y1/r)/omega;           //(s)
t2 = asind(y2/r)/omega;           //(s)

//Time required between the two points:
t = t1 - t2;                  //(s)
printf("Time required between the two points = %.2f s",t);
