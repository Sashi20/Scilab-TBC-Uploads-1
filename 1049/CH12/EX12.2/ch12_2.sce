clear;
clc;
V_m=330;
E_a=80;
r_a=4;
a=30;
I_a=((V_m/%pi*(1+cosd(a)))-E_a)/r_a;    printf("avg armature current=%.3f A",I_a);
n_s=1400;
w_m=2*%pi*n_s/60;
K_m=E_a/w_m;
T_e=K_m*I_a;    printf("\nmotor torque=%.3f Nm",T_e);