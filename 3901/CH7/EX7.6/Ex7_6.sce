clc
clear
close;
//taking wo=2*%pi

t=-8:0.01:8;
dt=0.01;
x=cos(2*%pi*t);
omega=-20:0.01:20;
p=0;
for om=-20:0.01:20
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x,'b');
title("given signal: cos(w0t) at w0=2*pi","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -2 4 2]);
subplot(1,2,2);plot(omega,abs(X),'r');
title("X(w)-two impulses at w0 and -w0","fontsize",4);
set(gca(),"y_location","middle");
