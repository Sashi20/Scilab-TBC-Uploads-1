clc;
clear;
W1=500;
R1=0.010;//Resistance
XL1=0.05;//leakage reactance
W2=750;
disp('when both secondary voltages are 400V:')
pf=0.8;//lag pf with 250KVA
W3=250;
R2=0.015;//Resistance value
XL2=0.04;//Reactance value
Z1=(R1+((XL1)*%i));
Z2=2*(R2+((XL2)*%i));
Z=Z1+Z2;
disp(Z1,'The per unit impedance for common base value 500 KVA:')
disp(Z2)
disp(Z)
theta=acos(0.8);
S=W2*(pf-(sin(theta)*%i));
S1=S*(Z2/Z);
S2=S*(Z1/Z);
SA=real(S1)+real(S2);//Real parts of the calculated power
disp(SA,'The total active power is :')
SR=W2*(sin(acos(0.8)));
disp('When the open circuit secondary voltages are respectively 405 and 415')
R3=0.0032;//from millman theorem
R4=0.0096;//from millman theorem
XL3=0.0160;//from millman theorem
XL4=0.0256;//from millman theorem
Z3=R3+((XL3)*%i);
Z4=R4+((XL4)*%i);
disp(Z3,'Load impedance:')
disp(Z4,'Load impedance:')
Z5=0.166+(0.125*%i);//Impedance value for the assured voltage 395V
E1=405+(0*%i);
E2=415+(0*%i);
Ez=(E1/Z3)+(E2/Z4);
Zo=(Z5*Z3*Z4)/((Z3*Z4)+(Z5*Z4)+(Z5*Z3));
V=(Ez*Zo);
disp(V,'The secondary terminal voltage is :')
Vi1=E1-V;
disp(Vi1,'The internal volt drop in the first transformer:')
Vi2=E2-V;
disp(Vi2,'The internal volt drop in the second transformer is :')
I1=Vi1/Z3;
I2=Vi2/Z4;
disp(I1,'Current for first transformer:')
disp(I2,'Current for second transformer:')
S3=V*I1;
S4=V*I2;
disp(S3,'Load at first transformer in VA:')
disp(S4,'Load at second transformer in VA:')
S5=S3+S4;
disp(S5,'The combined load in VA is:')







