//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = -80;     //(m/s)(Initial velocity)
v = 0;       //(Final velocity)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

s = (v^2 - u^2)/(2*g);     //(m)
printf("Height the bullet will rise = %.2f m",s);

