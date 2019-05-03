clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant

w0=1;   T0=2*%pi/w0;//period and frequency
dt=0.01;        //time increment
t=(0:dt:T0-dt);
y=2+3*cos(2*t)+4*sin(2*t)+2*sin(3*t+%pi/6)-cos(7*t+150*%pi/180);
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
y=repmat(y,1,5);t=-3*T0:dt:(length(y)-1).*dt-3*T0;//periodic signal definition

subplot(3,1,1);plot(t,y,'b');title("given signal","fontsize",4);
subplot(3,1,2);plot2d3(n,cn,[5]);title("c(n)","fontsize",4)
subplot(3,1,3);plot2d3(n,thetan,[2]);title("theta(n)","fontsize",4)
set(gca(),"x_location","top","zoom_box",[0 -1.5 10 0]);


