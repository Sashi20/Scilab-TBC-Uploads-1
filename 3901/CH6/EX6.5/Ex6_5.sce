clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant

w0=2;T0=2*%pi/w0;//period and frequency
dt=0.01;        //time increment
t=(0:dt:%pi-dt);
y=exp(-t/2);
N=length(y);
p=1;
for n=-10:10
  dn(p)=sum(y.*exp(-%i*w0*n*t).*dt)/T0;
  mag_dn(p)=abs(dn(p));
  ang_dn(p)=phasemag(dn(p))*%pi/180;
  p=p+1;
end

n=-10:10;
y=repmat(y,1,7);t=-3*T0:dt:(length(y)-1).*dt-3*T0;//periodic signal definition

subplot(3,1,1);plot(t,y,'b');
title("given signal","fontsize",4);
set(gca(),"zoom_box",[-8 -2 8 2],"x_location","middle","y_location","middle");
subplot(3,1,2);plot2d3(n,mag_dn,[5]);title("    |Dn|     ","fontsize",4)
subplot(3,1,3);plot2d3(n,ang_dn,[5]);title("angle(Dn)","fontsize",4);
set(gca(),"x_location","middle");

