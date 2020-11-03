//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 500;    //(kg)(Mass of the elevator)
a = 3;       //(m/s^2)(Acceleration)
m2 = 70;     //(kg)(Mass of operator)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Scale reading:
R1 = m2 * (g + a);             //(N)
printf("Scale reading when the elevator is ascending = %.2f N\n",R1);

//Total tension in the cable of the elevator:
R2 = (m1 + m2)*(g + a);        //(N)
printf("Total tension in the cable = %.2f N",R2);
