//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 2;    //(kg)(Mass of first ball)
u1 = 3;    //(m/s)(Initial velocity of first ball)
m2 = 4;    //(kg)(Mass of second ball)
u2 = 1;    //(m/s)(Initial velocity of second ball)
alpha1 = 30;     //(Degrees)(Angle, which initial velocity of first ball makes with the line of impact)
alpha2 = 30;     //(Degrees)(Angle, which the initial velocity of second ball makes with the line of impact)
e = 0.5;         //(Coefficient of restitution)

//(a) Direction, in which the 4 kg ball will move after the impact:
//Let theta1 = Angle, which the 2 kg ball makes with the line of impact,
//theta2 = Angle, which the 4 kg ball makes with the line of impact,
//v1 = Velocity of the 2 kg ball after impact,
//v2 = Velocity of the 4 kg ball after impact.

//Component of velocities perpendicular to the line of impact remain unchanged:
//v1*sind(theta1) = 1.5       -(1)
//v2*sind(theta2) = 0.5       -(2)

//From law of conservation of momentum:
//v1*cosd(theta1) + 2*v2*cosd(theta2) = 4.33       -(3)

//From law of collision of lastic bodies:
//v2*cosd(theta2) - v1*cosd(theta1) = .866      -(4)

//(3) + (4):
//v2*cosd(theta2) = 1.732           -(5)

//(2)/(5):
theta2 = atand(0.5/1.732);      //(Degrees)
printf("Angle, which the 4 kg ball makes with the line of impact = %.2f degrees\n",theta2);

//(b) Velocity of the 4 kg ball after impact:
//Substituting theta2 in equation (2):
v2 = (0.5)/sind(theta2);        //(m/s)
printf("Velocity of the 4 kg ball after impact = %.2f m/s\n",v2);

//(c) Direction, in which the 2 kg ball will move after impact:
//Substituting the value of theta2 and v2 in equation (4):
//v1*cosd(theta1) = 0.866;

//(1)/(6):
theta1 = atand(1.5/0.866);      //(Degrees)
printf("Angle, which the 2 kg ball makes with the line of impact = %.2f degrees\n",theta1);

//(d) Velocity of 2 kg ball after impact:
//Substituting the value of theta1 in equation (1):
v1 = 1.5/sind(theta1);      //(m/s)
printf("Velocity of the 2 kg ball after impact = %.2f m/s",v1);
