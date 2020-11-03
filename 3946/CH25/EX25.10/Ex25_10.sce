//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W1 = 500;      //(N)(Weight of body A)
W2 = 750;      //(N)(Weight of body B)
u = 0.2;       //(Coefficient of friction)

//Acceleration of the body B:
//Let T = Tension in the strings,
//a = Acceleration of the body B.

//From slope:
alpha = atand(3/4);

//Normal reaction:
R = W2 * cosd(alpha);        //(N)

//Frictional force:
Fr = u * R;                  //(N)

//Considering the motion of the body B:
//Resultant force = 2*T - 570;       (N)    -(1)

//Force acting on it = m2*g =W2/g * a = 76.5*a    -(2)

//Equating (1) and (2):
//2*T - 570 = 76.5*a                       -(3)

//Considering the motion of the body A:
//Resultant force = 500 - T                -(4)

//Force acting on it = m1 * 2*a = 102*a    -(5)

//Equating (4) and (5):
//500 - T = 102*a                          -(6)

//Solving (3) and (6):
a = 430/280.5;            //(m/s^2)

//Tension in the string supporting body A:
T = (1000 - 204*a)/2;       //(N)
printf("Tension in the string supporting body A = %.2f N",T);    //The answers vary due to round off error
