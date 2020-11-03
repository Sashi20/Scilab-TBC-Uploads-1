//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 120;             //(N)(Effort)
VR = 18;             //(Velocity ratio)
n = 0.6;             //(Efficiency)
L = 3500;            //(N)(Load to be lifted by machine)

//Load lifted by the machine:
//MA = W/P = W/120;
//n = MA/VR = (W/120)/18;
W = n * VR * P;           //(N)
printf("Load lifted by the machine = %.2f N\n",W);

//Law of the machine:
//In the second case:
P = 200;                 //(N)
W = 2600;                //(N)

//Substituting the two values of P and W in the law of machine, i.e., P = m*W + C
//120 = m*1296 + C;            -(1)
//200 = m*2600 + C;            -(2)
//(2)-(1)
m = 80/1304;

//Substituting m in eqn (2):
C = P - m*W;

printf("Law of the machine: P = %.2f W + %.2f\n",m,C);    //(The answers vary due to round off error)

//Effort required to run the machine at a load of 3.5 kN:
P = (m * L) + C;           //(N)
printf("Effort required to run the machine at a load of 3.5 kN = %.2f N",P);      //The answers vary due to round off error

