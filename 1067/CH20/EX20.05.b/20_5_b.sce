clear;
clc;
v1=66e3;
v2=11e3;
x2=.461;
x1=.4527;
If=229;
I1=If*x2/(x1+x2);
I2=If*x1/(x1+x2);
I=I1+I2;
Ig1=I1*v1/v2;
Ig1=fix(Ig1);
I1=round(I1*10)/10;
I2=round(I2*10)/10;
mprintf("the fault current supplied by each transformer is\n I1=%fA\nI2=%fA\nI3=I1+I2=%dA\n",I1,I2,I);
I2=fix(I2);
Ig2=I2*v1/v2;
mprintf("the fault current supplied by each generator \n Ig1=%dA\n Ig2=%dA\n",Ig1,Ig2);
