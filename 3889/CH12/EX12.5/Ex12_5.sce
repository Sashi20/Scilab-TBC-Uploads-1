//Example 12.5
//page 801
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s;
N=(s+3)
D=(s^3+9*s^2+24*s+20)
H=syslin('c',N/D)
Hc=cont_frm (N,D) 
disp('controllable canonical form=')
ssprint(Hc)
Ho=syslin('c',(Hc.A)',(Hc.C)',(Hc.B)',(Hc.D)')
disp('observable canonical form=')
ssprint(Ho)

e = (spec (Hc.A))'
P =round([ones(1,3);e;e^2]) //transformation for jordan form
//disp(P)
P1=P
P(1,2)=0
P(2,2)=1
P(3,2)=2*e(2)
P=round(P)
//disp(P)
//Aj=round(diag(roots(D)))
Aj=round(inv(P)*(Hc.A)*P)
Bj=round(inv(P)*(Hc.B))
Cj=round((Hc.C)*P1)
Dj=Hc.D
Hj=syslin('c',Aj,Bj,Cj,Dj)
disp('Jordan canonical form=')
ssprint(Hj)
