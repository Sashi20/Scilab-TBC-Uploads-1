//Example 7.11
//page 469
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator Design Using Root Locus
//Design of cascade lead compensator
xdel(winsid())//close all graphics Windows
clear;
clc;

//Values are mismatched due to rounding errors by author
//transfer function
s=%s;
G=4/((s)*(s+0.5));

//Root locus plot using evans root locus

f=figure()
evans(G)
title("Root locus of Original system",'fontsize',5)
h=legend('');
h.visible="OFF"
zoom_rect([-6 -6 6 6])
a=gca();
a.x_location="origin"
a.y_location="origin"
a.parent.background=8; 
a.auto_margins='off'
a.auto_scale='off'
a.data_bounds=[-20,-20;20,20]
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ur",2.8)
sgrid();

//Defining desired roots
z=0.5
wn=5
Kvdes=80
zt=sqrt(1-(z*z))
r1=complex((-z*wn),(wn*zt))
r2=complex((-z*wn),(-wn*zt))

G1= 1/((s+r1)*(s+r2))
disp(r1,r2,'Desired roots=')
[Mag ps]=polar(1/((r1)*(r1+2)))
 //ps =-(2*( abs(ps)*180/%pi ))
//ang_def=-180-ps;
ang_def=-180+phasemag(horner(G1,r1))-115
disp(ang_def,'angle deficiency in degrees=') 

zd1=-0.5
pd1=zd1*10
D1=(s-zd1)/(s-pd1)
K1=horner(4/(s*D1*G),0)
Y1=D1*K1*G

zd2=-0.2
pd2=zd2/16
D2=(s-zd2)/(s-pd2)
K2=(horner(((s*D2*G)/16),0)-3)/4
Y=D2*K2*Y1
disp(Y,'compensated system')
f1=figure()
plzr(Y)
evans(Y)
title("Root locus of Compensated system",'fontsize',5)
h=legend('');
h.visible="OFF"
zoom_rect([-6 -6 6 6])
a=gca();
a.x_location="origin"
a.y_location="origin"
a.parent.background=8; 
a.auto_margins='off'
a.auto_scale='off'
a.data_bounds=[-20,-20;20,20]
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ur",2.8)
sgrid();

