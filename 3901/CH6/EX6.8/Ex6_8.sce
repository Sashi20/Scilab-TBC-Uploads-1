clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant

w0=1;   T0=2*%pi/w0;//assuming frequency 1Hz
dt=0.01;        //time increment
t=(-T0/2:dt:T0/2-dt);
y=(10*cos(w0*t)-8).*((t>=-0.1024*T0)&(t<=0.1024*T0))+(10*cos(w0*t)+8).*((t<=(-0.5+0.1024)*T0)&(t>=-0.5*T0))+(10*cos(w0*t)+8).*((t>=(0.5-0.1024)*T0)&(t<=0.5*T0));//distortion component
N=length(y);
c0=sum(y.*dt)/T0;
n1=[1:10]';
for n=1:10
    dn(n)=sum(y.*exp(-%i*n*w0*t).*dt)/T0;
    cn(n)=2*dn(n);
end

cn=[c0;cn];n=[0;n1];
y=repmat(y,1,5);t=-3*T0:dt:(length(y)-1).*dt-3*T0;//periodic signal definition
subplot(2,1,1);plot(t,y,'b');title("distortion component","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -5 10 5]);
subplot(2,1,2);plot2d3(n,cn,[5]);title("c(n)","fontsize",4)
set(gca(),"zoom_box",[0 0 10 1.2]);

//distortion calculation
en=50;//energy of undistortecd signal
P=integrate("(10*cos(w0*t)-8).^2","t",0,0.1024*T0)*4/T0;//totaql harmonic power
P_3rd=((abs(cn(4))).^2)/2;           // power of third harmonic
D_tot=(P/en)*100;
D_3rd=(P_3rd/en)*100;
printf("\nTotal hatrmonic distortion is %.2f percent \n 3rd harmonic distortion is %.2f percent\n",D_tot,D_3rd);
//round-off error may be there
