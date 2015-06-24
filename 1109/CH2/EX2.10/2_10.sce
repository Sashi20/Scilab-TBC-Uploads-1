clear;
clc;
f=20*(10^6);l=32;Zsc=17+(%i*19.4);Zoc=115-(%i*138);
Zo=sqrt(Zoc*Zsc);
X=real(Zo);
Y=imag(Zo);
printf("-Characteristic impedance = %f /_ %f ohms\n",round(abs(Zo)),round(atan(Y,X)*180*10/%pi)/10);
Z1=sqrt(Zsc/Zoc);
A=real(Z1);
B=imag(Z1);
D=(1+A+(%i*B))/(1-(A+(%i*B)));
r=sqrt(((real(D))^2)+((imag(D))^2));
theta=atan((imag(D))/(real(D)));
n=6;
P=(1/(2*l))*((log(r))+(%i*(theta+(2*n*%pi))));
b=imag(P);
a=real(P);
printf("-Attenuation factor = %f neper/m\n",round(a*10000)/10000);
printf("-Phase propagation factor = %f radians/m",round(b*100)/100);
