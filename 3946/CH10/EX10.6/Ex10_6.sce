//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P1 = 40;            //(N)(Effort)
W1 = 1000;          //(N)(Load)
n = 0.5;            //(N)(Efficiency)
P2 = 74;            //(N)(Effort)
W2 = 2000;          //(N)(Load)
L = 5000;           //(N)

//Velocity ratio when the efficiency is 0.5:
MA = W1/P1;         //(Mechanical Advantage)

//n = MA/VR;
VR = MA/n;         //(Velocity ratio)
printf("Velocity ratio when the efficiency is 0.5 = %.2f\n",VR);

//Efficiency when P is 74 N and W is 2000 N:
MA = W2/P2;         //(Mechanical Advantage)
n = MA/VR;          //(Efficiency)

printf("Efficiency when P is 74 N and W is 2000 N = %.2f o/o\n",n * 100);

//Effort required to raise a load 5000 N
//Substituting the two values of P and W in the law if the machine i.e., P = m*W + C:
//40 = m * 1000 + C        -(1)
//74 = m * 2000 + C        -(2)
//(2)-(1):
m = 34/1000;

//Substituting this value of m ineqn (1):
C = P1 - m*W1;

printf("Law of machine: P = %.2f W + %.2f \n",m,C);

//Effort required to raise a load of 5000 N:
P = (m * L) + C;              //(N)
printf("Effort required to raise a load of 5000 N = %.2f N",P);
