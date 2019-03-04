//Example 6.4
//page 380
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Performance of Feedback Systems
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,'s');
Kp=1
Kv=1/0.000436
Ka=Kv*361.2/4500
D=Ka
G=4500/(s*(s+361.2))
disp(D*G,'D*G=')
g1=syslin('c',(G*D)/((G*D)+1)) //define tf
t=0:0.001:0.05;
gs1=csim('step',t,g1);
wn=sqrt(4500*Ka)
zeta= 361.2/(2*wn)
Mp=100*exp((-%pi*zeta)/sqrt(1-(zeta*zeta))) 


t=0:0.001:0.05;
Kc=14.728
Kt=147.28
D=Kc+Kt/s
G=4500/(s*(s+361.2))
Y=syslin('c',(D*G)/(D*G+1))
CP=s^3+361.2*s^2+66276*s+662760
disp(routh_t(CP),'Routh Array of Characteristic polynomial=')
disp(roots(CP),'Roots of characteristic polynomial=')
R=roots(CP)
CP1=(s-R(1))*(s-R(2))
wn=real(sqrt(R(1)*R(2)))
zeta=-(R(1)+R(2))/(2*wn)
disp(wn,'wn=',zeta,'zeta=')
//t=0:0.01:1
y1=csim('step',t,Y)
plot(t,[gs1;y1]')
title('Step response with PI controller')
