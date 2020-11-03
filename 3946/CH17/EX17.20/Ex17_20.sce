//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering upward motion of the stone:
u1 = -20;       //(m/s)(Initial velocity)
v1 = 0;         //(Final velocity)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Let s1 = Maximum height reached by the stone.
s1 = (v1^2 - u1^2)/(2*g);      //(m)

//Considering downward motion of the stone up to the glass pan:
u2 = 0;         //(Initial velocity)
s2 = s1/2;      //(m)(Distance covered by the stone)

//Let v2 = Final velocity of the stone, witb which it strikes the pan:
v2 = sqrt(abs(u2^2 + 2*g*s2));    //(m/s)

//Considering the motion of the stone after breaking the glass pan:
u3 = v2/2;      //(m/s)
s3 = abs(s1) - abs(s2);      //(m)

//Let v3 = Final velocity of the stone, with which it strikes the ground.
v3 = sqrt(u3^2 + 2*g*s3);        //(m/s)
printf("Final velocity of the stone, with which it strikes the ground = %.2f m/s",v3);
