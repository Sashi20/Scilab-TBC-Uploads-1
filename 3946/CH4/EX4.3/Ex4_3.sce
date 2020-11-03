//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

FA = 400;       //(N)(Force at A)
FB = 100;       //(N)(Force at B)
AB = 150;       //(mm)
//Magnitude of the resultant force:
//Since the forces are unlike and parallel, therefore magnitude of the resultant force;
R = FA - FB;           //(N)
printf("Magnitude of the resultant force = %.2f N\n",R);

//x = Distance between the lines of action of the resultant force and A in mm.
//Taking clockwise and anticlockwise moments about A and equating the same;
//300 * x = 100 * 150;
x = (FB*AB)/R;        //(mm)
printf("Distance between the lines of action of the resultant force and A = %.2f mm",x);
