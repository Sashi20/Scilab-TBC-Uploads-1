clear;
clc;
L=20*(10^-3);C=0.32*(10^-6);f=15*(10^3);
fc=(1/(3.14*(sqrt(L*C))));
printf("Cutoff frequency fc = %f kHz\n",fix(fc*0.1)/100);
Rk=sqrt(L/C);
printf(" Value of nominal terminating impedance Rk = %f ohms\n",fix(Rk*10)/10);
a=2*(acosh(f/fc));
printf(" Value of attenuation a = %f db\n",fix(a*8.686*100)/100);
printf(" Phase shift of the low pass filter = pi radians");
