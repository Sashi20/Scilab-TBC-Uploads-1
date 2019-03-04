//Example 7.9
//page 462
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator Design Using Root Locus
//Design of cascade lead compensator
xdel(winsid())//close all graphics Windows
clear;
clc;

//Some Values are mismatched due to rounding errors by author
//transfer function
s=%s;
G=1/((s^2)*(s+1.5))

//desired characteristics
ts=5
Mp=20

zeta= - log(Mp/100)/sqrt((%pi^2)+ ((log(Mp/100))^2))
sigma=4/ts
wn=2.28

sd= -sigma + %i*(wn*sqrt(1-(zeta^2)))
sdc=-sigma - %i*(wn*sqrt(1-(zeta^2)))
sd=-1+%i*2
sdc=-1-%i*2
ps=phasemag(horner(G,sd))
ang_def=180-ps
disp(ang_def,'Angle contribution=')
//Double lead compensation
z=-1.5
p=-1-(2*tand(atand(0.5/2)+(ang_def/2)))
D=((s-z)/(s-p))^2
K=247
Y=syslin('c',D*G*K)
disp(Y,'Compensated system=')
evans(Y)
title("Root locus of Compensated system",'fontsize',5)
h=legend('')
h.visible="OFF"
zoom_rect([-10 -10 10 10])
a=gca();
a.x_location="origin"
a.y_location="origin"
a.parent.background=8; 
a.auto_margins='off'
a.auto_scale='off'
a.data_bounds=[-20,-20;20,20]
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ur",2.8)
sgrid();
