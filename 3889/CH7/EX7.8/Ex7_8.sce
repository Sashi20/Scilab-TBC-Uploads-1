//Example 7.8
//page 460
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
G=1/((s)*(s+2));

//Root locus plot using evans root locus

f=figure()
evans(G)
title("Root locus of 1/((s)*(s+2)) i.e Original system",'fontsize',5)
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
wn=4
zt=sqrt(1-(z*z))
r1=complex((-z*wn),(wn*zt))
r2=complex((-z*wn),(-wn*zt))

G1= 1/((s+r1)*(s+r2))
disp(r1,r2,'Desired roots=')
[Mag ps]=polar(1/((r1)*(r1+2)))
 //ps =-(2*( abs(ps)*180/%pi ))
//ang_def=-180-ps;
ang_def=180-phasemag(horner(G1,r1))
disp(ang_def,'angle deficiency in degrees=') //value not matching with author
//Taking zero in the region specified by author

zd=-2.9
pd=-5.4
D=(s-zd)/(s-pd)
K=(((abs(r1-pd))*(abs(r1-2))*(abs(r1)))/(abs(r1-zd)))-10
disp(K,'K=')
Y=D*K*G
disp(Y,'compensated system')
f1=figure()
plzr(Y)
evans(Y)
title("Root locus of 18.7(s+2.9)/((s)*(s+2)*(s+5.4)) i.e Compensated system",'fontsize',5)
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
Kv=horner(s*Y,0)
disp(Kv,'Velocity error constant=')
