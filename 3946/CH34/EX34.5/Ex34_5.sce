//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T = 4.5;     //(Turns taken by the spring spindle for one day)

//Velocity ratio of main spindle to the hour hand spindle:
VR = T/2;
printf("Velocity ratio of main spindle to the hour hand spindle = %.2f\n",VR);

//Velocity ratio of the minute hand spindle to the hour spindle:
VRM = 12/1;
printf("Velocity ratio of the minute hand spindle to the hour spindle = %.2f\n",VRM);

//Train of wheels:
//Let T1 = No. of teeth on the hour hand spindle,
//T2 = No. of teeth on the wheel 2,
//T3 = No. of teeth on the wheel 3,
//T4 = No. of teeth on the minute hand spindle.

//T1 + T2 = T3 + T4               -(i)
//T1 * T3 = 12 * (T2 * T4)        -(ii)

//Assuming:
T4 = 8;
T3 = 4*T4;

//Substituting the values of T3 and T4 in equation (i):
//T1 = 40 - T2                     -(iii)

//Substituting the value of T3 and T4 in equation (ii):
//T1 = 3*T2                        -(iv)

//Substituting this value of T1 in equation (iii):
T2 = 40/4;

//Substituting this value of T2 in equation (iii):
T1 = 40 - 10;

printf("No. of teeth on the hour hand spindle = %.2f\n",T1);
printf("No. of teeth on the wheel 2 = %.2f\n",T2);
printf("No. of teeth on the wheel 3 = %.2f\n",T3);
printf("No. of teeth on the minute hand spindle = %.2f",T4);
