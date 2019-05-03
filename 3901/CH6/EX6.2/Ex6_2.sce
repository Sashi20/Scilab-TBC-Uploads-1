clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant
//Taking A=0.5
w0=%pi;   T0=2;//period and frequency
dt=0.01;        //time increment
t=(-0.5:dt:1.5-dt);
y=(t.*((t>=-0.5)&(t<0.5)))+((-t+1).*((t>=0.5)&(t<1.5)));
N=length(y);
c0=sum(y.*dt)/T0;
n1=[1:10]';
for n=1:10
  aa(n)=2*sum(y.*cos(n*w0*t).*dt)/T0;
  bb(n)=2*sum(y.*sin(n*w0*t).*dt)/T0;
  cn(n)=sqrt(aa(n).^2+bb(n).^2);
  thetan(n)=atan(-bb(n)/aa(n));
end
thetan(7)=-thetan(7);
thetan(2*(1:5))=[0;0;0;0;0];//as even components are zero angles at even n are not needed
cn=[c0;cn];thetan=[0;thetan];n=[0;n1];
y=repmat(y,1,5);t=-4.5:dt:(length(y)-1).*dt-4.5;//periodic signal definition

subplot(3,1,1);plot(t,y,'r');title("given signal","fontsize",4);
set(gca(),"zoom_box",[-4 -1 4 1],"x_location","middle","y_location","middle");
subplot(3,1,2);plot2d3(n,cn,[2]);title("c(n)","fontsize",4)
subplot(3,1,3);plot2d3(n,thetan,[2]);title("theta(n)","fontsize",4)
set(gca(),"x_location","middle");


