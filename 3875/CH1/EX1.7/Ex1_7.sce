clc;
clear;
R=8 //resistance in ohm
L=0.03 //inductance in H
V=240 //voltage in Volts
f=50 //frequency in Hz
reactance_RLC=9.42 //reactance of total RLC circuit in ohm in case(2)

//calculation 
//for (1)
X_L=2*%pi*f*L // inductive reactance in ohm
Z=sqrt(R^2+X_L^2) //in ohm
I=V/Z // current in A
P=I^2*R // Power in Watt
pf=R/Z //power factor is the ratio of R/Z

//for (2)
reactance_C=2*reactance_RLC //capacitive reactance in ohm
omega=2*%pi*f //angular freqency in rad/s
C=(1/(omega*reactance_C)/10^-6) //converting from F to micro F dividing by 10^-6

mprintf("(i)Impedance = %2.1f ohm\n",Z) //The answer varies due to round off error
mprintf("(ii)Current = %1.2f A\n",I) //The answers varies due to round off error
mprintf("(iii)Power Factor = %1.2f (lag)\n",pf)
mprintf("(iv)Power Consumed = %d W\n",P) //The provided in the textbook is wrong.
mprintf("(v)The value of capacitance is = %d micro F\n",C)//The answers varies due to round off error
