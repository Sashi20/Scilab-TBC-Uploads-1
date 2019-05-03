clc
clear 
close;

//*********************part a*******************************
//defining x(t)
function x=p(t)
    x=cos(10*%pi*(t-0.05)).*((t>=0)&(t<=0.1));
endfunction

t=-0.12:0.0009:0.12;
wc=2000*%pi;
x=p(t);
z=x.*cos(wc*t);
tg=10^-3;
y=2*p(t-tg).*cos(wc*(t-tg)-0.4*%pi);

figure(1)
subplot(1,3,1);plot(t,x,'b');
title("x(t)","fontsize",4);
set(gca(),"zoom_box",[t(1) -2 t($) 2],"x_location","middle","y_location","middle");
subplot(1,3,2);plot(t,z,'r');
title("z(t)","fontsize",4);
set(gca(),"zoom_box",[t(1) -2 t($) 2],"x_location","middle","y_location","middle");
subplot(1,3,3);plot(t,y,'r');
title("y(t): distortionless","fontsize",4);
set(gca(),"zoom_box",[t(1) -2 t($) 2],"x_location","middle","y_location","middle");

//********************part b***********************************
wc=4000*%pi;
y2=1.5*p(t).*cos(wc*t-3.1*%pi);
figure(2)
plot(t,y2,'b');
title("(part_b) y2(t): distortionless","fontsize",4);
set(gca(),"zoom_box",[t(1) -2 t($) 2],"x_location","middle","y_location","middle");
