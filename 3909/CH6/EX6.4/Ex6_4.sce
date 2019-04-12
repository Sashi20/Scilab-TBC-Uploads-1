clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.4
//calculation of per cent contraction in length 
//given data
v=0.9; //velocity is 0.9 times the speed of light
theta=45; //inclination (in degrees)
//calculation
l0=1; //assuming l0 to be 1 for simplicity of calculation
lx=l0/sqrt(2)*sqrt(1-v^2); //length of rod moving in x-direction
ly=l0/sqrt(2); //length of rod moving in y-direction
l=sqrt(lx^2+ly^2); //length
p=(l0-l)/l0; //percent contraction in length
printf("\npercent contraction in length is %2.1f percent",p*100)
