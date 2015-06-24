clear;
clc;
cc=5.8*10^7, f=4.8*10^9,c=10^-17,Uo=4*%pi*10^-7,Eo=10^-9/(36*%pi),Er=2.55,z=60*10^-2,l=4.2*10^-2,b=2.6*10^-2,P=1.2*10^3;
n=377/sqrt(Er);
u=3*10^8 /sqrt(Er);
fc=u/(2*l);
ad=c*n/(2*sqrt(1-(fc/f^2)));
Rs=sqrt(%pi*f*Uo/cc);
ac=2*Rs*(.5+(b/l)*(fc/f)^2)/(b*n*sqrt(1-(fc/f)^2));
a=ac;
Pd=P*(%e^(2*a*z) -1);
disp(Pd,'Power dissipiated = ');