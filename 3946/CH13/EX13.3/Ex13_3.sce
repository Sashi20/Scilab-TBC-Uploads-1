//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FD = 1500;    //(N)(Force at D)
//Taking moments about A and equating the same:
n = 4;          //(No. of partitions)
VB = FD/n;      //(N)
VA = FD -VB;    //(N)
//h = 2.25*a;   
H = 2.25;

//From geometry:
//y = 2.25a;
//x = 3a;
X = 3;
//theta = atand(y/x);
theta = atand(H/X);      //(Degrees)

//Taking moments about joint M and equating the same:
P1 = VB/sind(theta);      //(N)(Compression)

//Taking moments about joint A and equating the same:
P2 = FD/2;           //(N)(Tension)

//Taking moments about the joint L, and equating the same:
P3 = P2/(X/2);           //(N)(Tension)

printf("Force in the member 1 = %.2f N(Compression)\n",P1);
printf("Force in the member 2 = %.2f N(Tension)\n",P2);
printf("Force in the member 3 = %.2f N(Tension)\n",P3);
