clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.19
//calculation of probability of finding the particle
//given data
L=10e-010; //length of box (in m)
x1=0.45*L; //lower limit
x2=0.55*L; //upper limit
P=integrate('2/L*(sin(%pi*x/L))^2','x',x1,x2)
printf("\nprobability of finding the particle is %2.1f percent",P*100)
