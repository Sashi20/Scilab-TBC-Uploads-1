//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 700;        //(mm)(Length of the lever)
T2 = 12;        //(No. of pinion teeth)
T1 = 96;        //(No. of spur teeth)
r = 100;        //(mm)(Radius of load axle)

//(i)Law of the machine:
P1 = 60;        //(N)
W1 = 1800;      //(N)
P2 = 120;       //(N)
W2 = 3960;      //(N)

//Substituing the values of P and W in the law of the machine: P = m*W + C
//60 = (m*1800) + C        -(1)
//120 = (m*3960) + C       -(2)
//(2)-(1)
m = P1/2160;
//Substituting this value of m in eqn (1)
C = P1 - m*W1;

printf("Law of the machine: P = %.2f W + %.2f\n",m,C);

//(ii)Efficiencies of the machine in both the cases:
VR = (l/r) * (T1/T2);    //(Velocity ratio)
//First case:

MA1 = W1/P1;              //(Mechanical advantage)
eta1 = MA1/VR;             //(Efficiency)
printf("Efficiency of the machine in first case = %.2f %%\n",eta1 * 100);    //The answers vary due to round off error

//Second case:

MA2 = W2/P2;             //(Mechanical advantage)
eta2 = MA2/VR;             //(Efficiency)
printf("Efficiency of the machine in second case = %.2f %%",eta2 * 100);
