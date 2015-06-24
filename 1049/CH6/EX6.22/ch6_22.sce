clear;
clc;
E=200;
I_o=20;
R=.5;
V_o=E+I_o*R;
V_s=230;
V_ml=sqrt(2)*V_s;
a=acosd(V_o*2*%pi/(3*V_ml)-1);    printf("firing angle delay=%.2f deg",a);
a1=180-a;
I_sr=sqrt((1/%pi)*I_o^2*(a1*%pi/180));
P=V_o*I_o;
pf=P/(sqrt(3)*V_s*I_sr);    printf("\npf=%.4f",pf);