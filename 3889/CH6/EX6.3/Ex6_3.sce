//Example 6.3
//page 377
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Performance of Feedback Systems
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,'s');
G=4500/(s*(s+361.2))
Kv=1/0.000436
Ka=Kv*361.2/4500
wn=sqrt(Ka*4500)
zeta=361.2/(2*wn)
G1=((G*Ka)/(1+G*Ka))
disp(G1,'G(closed loop)=')

//For critical damping
Kt=((2*wn)-361.2)/45000
Kvnew=(4500*Ka)/(361.2+45000*Kt)
G2=(4500*Ka)/s*(s+361.2+45000*Kt)
Ess=horner(s*G2,0)
zeta=1
Ka=4676.4
Kt=0.196
wnnew=sqrt(4500*Ka)

