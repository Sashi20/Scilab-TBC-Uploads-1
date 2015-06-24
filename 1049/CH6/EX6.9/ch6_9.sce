clear;
clc;
V_s=230;
f=50;
a=45;
R=5;
E=100;
V_o=((sqrt(2)*V_s)/(2*%pi))*(3+cosd(a));
I_o=(V_o-E)/R;    printf("avg o/p current=%.3f A",I_o);
P=E*I_o;    printf("\npower delivered to battery=%.4f kW",P/1000);