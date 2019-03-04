//Example 6.2
//page 374
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Performance of Feedback Systems



xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,'s');

//Proportionally controlled system behavior
disp('For P controlled system:')
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

disp(Mp,"Peak Overshoot percent % Mp=")
disp(zeta,"damping constant=")
disp(wn,"Frequency wn=")

//After applying PD controller of Kd=0.324, we obtain critically damped system
Kc=Kv*361.2/4500
Kd=((1-zeta)*2*wn)/(4500)
disp('With PD controller')
disp(Kc,'Kc=')
disp(Kd,'Kd=')
D1=Kc+Kd*s
disp(D1*G,'D*G=')
g2=syslin('c',(D1*G)/((D1*G)+1)) //define tf
gs2=csim('step',t,g2);

plot(t,[gs1 ; gs2]'); // plotting step response
title('Step response of system with PD controller')
