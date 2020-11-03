//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m2 = 10;       //(kg)(Mass of block A)
m1 = 5;        //(kg)(Mass of block B)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Acceleration of block A:
acc_A = g/9;      //(m/s^2)

//Let T = Tension in the string in N,
//mu = Coefficient of friction between block and table.

//Normal reaction on the horizontal surface by the body of mass 10 kg:
R = m2*g;     //(N)

//Frictional force:
//F = mu * R;         //(m/s^2)

//Considering the motion of the block A:
//Resultant force = T - 10*mu*g;            -(1)
//Force acting on the block = 10 * acc_A;     -(2)

//Equating (1) and (2):
//T - 10*mu*g = 10/9 * g;

//Multiplying both sides by 2;
//2*T - 20*mu*g = 20/9 * g;                 -(3)

//Considering the motion of the block B:
//Resultant force = 5*g - 2*T              -(4)
a = g/18;             //(m/s^2)
//Force acting on it = ma;                 -(5)

//Equating (4) and (5):
//5*g - 2*T = 5/18 * g;                    -(6)

//Adding equations (3) and (6):
m = (m1*a + (2*m2*acc_A))/g
acc = m1 - m;     //(After solving 3 and 6)
mu = (acc)/(2*m2);
printf("Coefficient of friction between block and table = %.2f",mu);    //The answers vary due to round off error
