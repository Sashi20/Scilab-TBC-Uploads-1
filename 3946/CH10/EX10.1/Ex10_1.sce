//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1000;                   //(N)(Weight)
P = 25;                     //(N)(Effort)
x = 0.1;                    //(m)(Distance through which the weight is moved)
y = 8;                      //(m)(Distance through which the effort is moved)

//Mechanical advantage of the machine:
MA = W/P;
printf("Mechanical advantage of the machine = %.2f\n",MA);

//Velocity ratio of the machine:
VR = y/x;
printf("Velocity ratio of the machine = %.2f\n",VR);

//Efficiency of the machine:
eta = MA/VR;
printf("Efficiency of the machine = %.2f %%",eta * 100);
