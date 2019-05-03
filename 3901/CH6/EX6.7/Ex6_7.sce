clc
clear
close;
//error in phase might be there as atan finds angle only in 1st quadrant

//taking period of 3
T0=3; 
dt=0.01;        //time increment
t=(0:dt:T0-dt);
y=1.*(t==0);//definiing impulse function
c0=1/T0;
n1=[1:10]';
for n=1:10
   cn(n)=2/T0;
end

cn=[c0;cn];n=[0;n1];
y=repmat(y,1,5);t=-3*T0:dt:(length(y)-1).*dt-3*T0;//periodic signal definition

subplot(2,1,1);plot(t,y,'b');title("impulse train","fontsize",4);
subplot(2,1,2);plot2d3(n,cn,[5]);title("c(n)","fontsize",4);
set(gca(),"zoom_box",[0 0 10 1]);


