clc;
clear;
c1=1.5e-6;
w=2*%pi*50;
L1=1/(3*c1*(w^2));
c2=.9*c1;
L2=1/(3*c2*(w^2));
c3=.95*c1;
L3=1/(3*c3*(w^2));
L1=round(L1*100)/100;
L2=round(L2*10)/10;
L3=round(L3*100)/100;
mprintf("the inductance for 100 percent line capacitance=%f henries \n",L1);
mprintf("for 90percent line capacitance,the inductance=%f henries\n",L2);
mprintf("for 95percent line capacitane inductance=%f henries",L3);
