clc
clear
close;
//assuming some random values
A=1;
wm=10*%pi;
wc=2000*%pi;
t=-0.1:0.00092:0.5;
m1=0.5;
m2=1;
y_am1=A*(1+m1*cos(wm*t)).*cos(wc*t);
y_am2=A*(1+m2*cos(wm*t)).*cos(wc*t);
subplot(1,2,1);plot(t,y_am1,'b');
title("Tone_modulated signal(mu=0.5)","fontsize",4);
set(gca(),"zoom_box",[t(1) -2.1 t($) 2.1],"x_location","middle");
subplot(1,2,2);plot(t,y_am2,'b');
title("Tone_modulated signal(mu=1)","fontsize",4);
set(gca(),"zoom_box",[t(1) -2.1 t($) 2.1],"x_location","middle");
