//this code will take some time to give result as increments are very small
clc
clear 
close;

t=-0.5:0.01:0.5;
dt=0.01;
x=sinc(5*%pi*t).^2;
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
figure(1)
subplot(1,2,1);plot(t,x,'b');
title("x(t)=sinc(5pi*t).^2","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-0.3 -1.2 0.3 1.2]);
subplot(1,2,2);plot(omega,X,'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-30 -0.4 30  0.4]);

//practical sampling
T=0.1;
p=1;
x1=(sinc(5*%pi*t).^2).*((abs(modulo(t,T))<0.0125)|(abs(modulo(t,T))>0.0875));
omega=-50*%pi:0.01:50*%pi;
p=0;
for om=-50*%pi:0.01:50*%pi
  p=p+1;
  X1(p)=sum(x1.*exp(-%i*om*t).*0.009);
end
figure(2)
subplot(1,2,1);plot(t,x1,'b');plot(t,x,'r');
title("practical_sampling of x(t)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-0.3 -1.2 0.3 1.2]);
subplot(1,2,2);plot(omega,abs(X1),'r');
title("X(w) new","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[omega(1) -0.06 omega($) 0.06]);

//there will be small error in amplitude
