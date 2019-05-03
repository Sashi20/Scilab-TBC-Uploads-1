clc
clear
close;

//finding fourier series
w0=2;   T0=2*%pi/w0;//period and frequency
dt=0.01;
t=0:dt:%pi-dt;
y=(exp(-t/2)).*((t>=0)&(t<%pi));
N=length(y);
c0=sum(y.*dt)/T0;
n1=[1:10]';
for n=1:10
  aa(n)=2*sum(y.*cos(n*w0*t).*dt)/T0;
  bb(n)=2*sum(y.*sin(n*w0*t).*dt)/T0;
  cn(n)=sqrt(aa(n).^2+bb(n).^2);
  thetan(n)=atan(-bb(n)/aa(n));
end

cn=[c0;cn];thetan=[0;thetan];n=[0;n1];
y=repmat(y,1,5);t=0:dt:(length(y)-1).*dt;//periodic signal definition

subplot(3,1,1);plot(t,y,'r');title("given signal","fontsize",4);
set(gca(),"zoom_box",[t(1) 0 t($) 1]);
subplot(3,1,2);plot2d3(n,cn,[2]);title("c(n)","fontsize",4)
subplot(3,1,3);plot2d3(n,thetan,[2]);title("theta(n)","fontsize",4)
set(gca(),"x_location","top");


