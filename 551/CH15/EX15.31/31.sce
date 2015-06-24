clc
T1=91; //K
T2=303; //K
e1=0.03;
e2=0.03;
d1=0.3; //m
d2=0.45; //m
a=5.67*10^(-8);
F_12=1;

Q=4*%pi*(d1/2)^2*a*(T1^4-T2^4)/( ((1-e1)/e1) + 1/F_12 + ((1-e2)/e2)*d1^2/d2^2);
disp("Rate of heat flow =")
disp(Q)
disp("W")