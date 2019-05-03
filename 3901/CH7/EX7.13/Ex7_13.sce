//taking a=2,t0=2
clc
clear
close;

t=-10:0.01:10;
dt=0.01;
x=exp(-2*abs(t-2));//defining e^a|t|
omega=-10:0.01:10;
p=0;
for om=-10:0.01:10
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(1,3,1);plot(t,x,'b');
title("x(t): -e^a|t-t0|","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -1.2 10 1.2]);
subplot(1,3,2);plot(omega,abs(X),'r');
title("|X(w)|","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -2 10 2]);
subplot(1,3,3);plot(omega,phasemag(X)*%pi/180,'r');
title("phas(X(w)): -wt0","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-%pi/2 -4 %pi/2 4]);

//the angle is -wt0 but phasemag() will give angle in the range of [0:2*pi] only,hence the phase plot will be like -wt0 in the range[-pi/2:pi/2] and it will repeat thereafter
