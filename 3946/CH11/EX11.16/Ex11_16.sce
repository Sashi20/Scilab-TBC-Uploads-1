//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 80;         //(mmm)(Radius of the load drum)
l = 360;        //(mm)(Length of the handle)
T2 = 20;        //(No. of teeth on pinions)
T4 = 30;
T1 = 75;        //(No. of teeth on spur wheels)
T3 = 90;
P1 = 90;        //(N)
W1 = 1800;      //(N)
P2 = 135;       //(N)
W2 = 3150;      //(N)

//(a)Law of the machine:
//Substituting the values of P and W in the law of the machine i.e., P = m*W + C
//90 = m*1800 + C        -(1)
//135 = m*3150 + C       -(2)
//(2)-(1)
m = (P2-T3)/(W2-W1);
//Substituting this value of m in eqn (1):
C = T3 - m*W1;
printf("Law of the machine: P = %.2f W + %.2f\n",m,C);

//(b)Effort to lift a load of 4500 N:
W = 4500;               //(N)
//Substituing the value of W = 4500 N in the law of the machine:
P = (m * W) + C;       //(N)
printf("Effort to lift a load of 4500 N = %.2f N\n",P);

//(c)Efficiency of the machine in the above case:
VR = (l/r)*(T1/T2)*(T3/T4);    //(Velocity ratio)
MA = W/P;                      //(Mechanical advantage)
eta = MA/VR;                    //(Efficiency)
printf("Efficiency = %.2f o/o\n",eta * 100);    //The answers vary due to round off error

//(d)Maximum efficiency of the machine:
eta_max = 1/(m * VR);     //(Maximum efficiency of the machine)
printf("Maximum efficiency of the machine = %.2f o/o",eta_max * 100);    //The answers vary due to round off error
