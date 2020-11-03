//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 12;          //(N)(Effort)
VR = 18;         //(Velocity Ratio)
n = 0.6;         //(Efficiency)

//Load lifted by the machine:
//MA = W/P = W/12;
//n = MA/VR = (W/12)/18;
W = n * VR * P;        //(N)
printf("Load lifted by the machine = %.2f N\n",W);

//Law of the machine:
Feffort = P -  (W/VR);     //(N)
C = Feffort;

//Substituting the values of P and C in the law of machine:
m = (P - C)/W;
printf("Law of machine: P = %.2f W + %.2f\n",m,C);

//Effort required to run the machine at no load:
//Substituting the value of W = 0 in the law of machine:
P = 4.8;        //(N)
printf("Effort required to run the machine at no load = %.2f N\n",P);

//Effort required to run the machine at a load of 900 N:
//Substituting the value of W = 900 in the law of machine:
W = 900;
P = m * W + C;
printf("Effort required to run the machine at a load of 900 N = %.2f N",P);
