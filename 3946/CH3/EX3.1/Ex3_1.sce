//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 15;         //(N)(Force applied)
l = 0.8;        //(m)(width of the door)
theta = 60;     //(degrees)(Angle of the force with horizontal)

//Moment when the force acts perpendicular to the door;
M1 = P * l;          //(N-m)
printf("Moment of the force about the hinge = %.2f N-m\n",M1);

//Moment when the force acts at an angle of 60 degrees to the door;
//From geometry, we find that the perpendicular distance between the line of action of the force and hinge
OC = l * sind(theta);         //(m)
M2 = P * OC;                //(N-m)

printf("Moment when the force acts at an angle of 60 degrees to the door = %.2f N-m",M2);     //The answers vary due to round off error
