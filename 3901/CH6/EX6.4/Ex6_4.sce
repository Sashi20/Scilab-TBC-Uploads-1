clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant

w0=1;T0=2*%pi/w0;//period and frequency
dt=0.01;        //time increment
t=(-%pi:dt:%pi-dt);
y=1.*((t>=-%pi/2)&(t<=%pi/2));
N=length(y);
c0=0.5;
n1=[1:10]';
for n=1:10
  dn(n)=sum(y.*exp(-%i*w0*n*t).*dt)/T0;
  cn(n)=2*dn(n); 
end

cn=[c0;cn];n=[0;n1];
y=repmat(y,1,7);t=-3.5*T0:dt:(length(y)-1).*dt-3.5*T0;//periodic signal definition

subplot(2,1,1);plot(t,y,'b');
title("given signal","fontsize",4);
set(gca(),"zoom_box",[-15 -2 15 2],"x_location","middle","y_location","middle");
subplot(2,1,2);plot2d3(n,cn,[5]);title("c(n)","fontsize",4);
set(gca(),"x_location","middle","zoom_box",[0 -0.7 10 0.7]);


