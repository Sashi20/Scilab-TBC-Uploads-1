clc;
clear;
Tcritical= 400 //For exact values, refer to textbook and change accordingly
T0=288;//K
p0=101;//kPa(abs)
l=2;//m
D=0.1;//m
f=0.02;
pd=45;//kPa(abs)
f=0.02;
k=1.4;
lnew=(50/100)*l;
x=lnew*f/D;
//from this value of x, following are found
Ma=0.7;
prat=1.5;//where prat=p1/pcritical
//from this value of Ma, following are found
pratio=0.72;//where pratio=p1/p0
dratio=0.79;//where dratio=d1/d0,1
Vratio=0.73;//where Vratio=V1/Vcritical
//hence,
p2=(1/prat)*pratio*p0;//kPa(abs)
pcritical=p2; 
//we find that pd