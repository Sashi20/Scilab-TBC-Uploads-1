//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 800;    //(kg)(Mass of the motor car)
d = 2.75;   //(m)(Distance between the centre of the axles)
h = 0.85;   //(m)(Height of the c.g. of the car above the ground)
x1 = 1.15;  //(m)(Distance of c.g. from front wheel)
x2 = 2.75-1.15;   //(m)(Distance of c.g. from rer wheel)
mu = 0.6;    //(Coefficient of friction)

//(i) Maximum possible acceleration when the car has rear wheel drive:
//Let RF = Reaction on the front pair of wheels,
//RR = Reaction on the rear pair of wheels,
//a = Maximum possible acceleration of the car.

//RF + RR = M*g = 7840 N         (i)

//Since the car is moving with an acceleration (a), therefore accelerating force acting on it:
//F = M*a                        (ii)

//Force of friction on the rear pair of wheels,
//FR = u*RR = 0.6*RR

//Taking moments about the centre of gravity (G) of the car and equating the same:
//RF = 1.835 * RR

//Substituting this value of RF in equation (i):
RR = 7840/2.835;     //(N)

FR = mu * RR;       //(N)     -(iii)

//Force of friction = Accelerating force;
a = FR/M;            //(m/s^2)
printf("Maximum possible acceleration when the car has rear wheel drive = %.2f m/s^2\n",a);

//(ii) Maximum possible acceleration when the car has front wheel drive:
//Force of friction on the front pair of wheels:
//FF = 0.6*RF;

//Taking moments about the centre of gravity (G) of the car and equating the same:
//RR = 0.4*RF
//Substituting this value of RR in equation (i):
RF = 7840/1.4;       //(N)
FF = mu * RF;       //(N)    (iv)

//Force of friction = Accelerating force;
a = FF/M;      //(m/s^2)
printf("Maximum possible acceleration when the car has front wheel drive = %.2f m/s^2\n",a);

//(iii) Maximum possible acceleration when the car has four wheel drive:
//FF + FR = 0.6*(RF + RR) = 4704 N      (v)

//Total force of friction = Accelerating force;
a = 4704/M;      //(m/s^2)
printf("Maximum possible acceleration when the car has four wheel drive = %.2f m/s^2",a);
