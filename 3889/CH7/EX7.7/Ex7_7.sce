//Example 7.7
//page 457
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Compensator Design Using Root Locus


//Note: Some figures in this problem are slightly mismatched due to truncation and rounding errors by author

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
//given values
G=1/(s^2)

//Desired characteristic boundaries
ts=4
Mp=20

//Inferred values
zeta= - log(Mp/100)/sqrt((%pi^2)+ ((log(Mp/100))^2))
sigma=4/ts
wn=sigma/zeta
sd= -sigma + %i*(wn*sqrt(1-(zeta^2)))
sdc=-sigma - %i*(wn*sqrt(1-(zeta^2)))
disp(zeta,"Desired minimum damping=")
disp(sd,"Desired dominant root position")
G1= 1/((s-sdc)*(s-sd))
//Angle contribution from compensator
[Mag ps]=polar(sd) //converting desired dominant poles to polar coordinates
 ps =(-(2* real(ps)*180/%pi ));// to degrees
 //phi=-180-ps;//angle contribution
 phi=180-phasemag(horner(G,sd))
 //Design
 // We place a zero at Re(sd)
//Now, to find corresponding position of compensator pole, we use angle contribution value
zd=-real(sd)
pd=-real(sd)+(2*tan(phi))
D=(s+zd)/(s+pd)
disp(D,"Transfer function of compensator:")
K=(abs(sd-0)^2)*(abs(sd-pd))/(abs(sd-zd))
Y=K*D*G //compensated system
disp(Y,"Compensated system")
evans(Y,50)
plzr(G1)
title("Root locus of compensated system",'fontsize',5)
h=legend('');
xarrows([0 real(sd)],[0 imag(sd)])
xarrows([0 real(sd)],[0 imag(sdc)])
xarrows([real(sd) -pd],[imag(sd) 0])
xarrows([-pd real(sd)],[0 0])
h.visible="OFF"
zoom_rect([-5 -3 3 5])
a=gca()
a.x_location='origin'
a.y_location='origin'
a.auto_margins='off'
a.auto_scale='off'
a.data_bounds=[-20,-20;20,20]
legends(['root locus';'';'asymptotic directions';'open loop poles'],[2,3,1,-2],with_box=%f,opt="ul",2.8)
Ka= horner(s^2*Y,0)
disp(Ka,'acceleration error constant =')
