//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 400;            //(N)(Weight of the body)
u = 0.3;            //(Coefficient of friction)
b = 2.4;            //(m)
h = 1.2;            //(m)
//Whether it is necessary to push the body down the plane or hold it back from sliding down:
alpha = atand(h/b);              //(degrees)

//Normal reaction:
R = W * cosd(alpha);                 //(N)

//Force of friction:
F = u * R;                       //(N)

//Resolving the 400 N force along the plane:
F1 = W * sind(alpha);              //(N)

//The body will slide down:
//Minimum force required parallel to the plane:
P = F1 - F;                      //(N)

printf("The force along the plane (which is responsible for sliding the body) is more than the force of friction, therefore the body will slide down. Or in other words, it is not necessary to push the body down the plane, rather it is necessary to hold it back from sliding down.\n");
printf("Minimum force required parallel to the plane = %.2f N",P);    //The answers vary due to round off error

