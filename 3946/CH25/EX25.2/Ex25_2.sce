//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 150;      //(kg)(Mass of the first block)
m2 = 50;       //(kg)(Mass of second block)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let a = Acceleration of the block,
//T = Tension in the string.

//Considering the motion of the 150 kg block:

//Resultant force = 150 * g - 2*T (downwards)     -(1)

//Force acting on this block = 150 * a;         -(2)

//Equating (1) and (2):
//150 * g - 2 * T = 150 * a                     -(3)

//Considering the motion of 50 kg block:
//Resultant force = T - 50*g (upwards)          -(4)

//Force acting on this block = 50 * 2*a         -(5)
//Equating (4) and (5):
//T - 50*g = 100*a                              -(6)

//Solving (3) and (6):
a = (m2 * g)/(4*m2 + m1);             //(m/s^2)
printf("Acceleration of block A = %.2f m/s^2\n",a);
printf("Acceleration of block B = %.2f m/s^2\n",2*a);

//Tension in the strings:
//Substituting the value of a in equation (3):
T = [(m1 * g) - (m1 * a)]/2;        //(N)
printf("Tension in the strings = %.2f N",T);
