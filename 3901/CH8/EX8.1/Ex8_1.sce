clc
clear 
close;
t=-5:0.01:5;
dt=0.01;
x=sinc(5*%pi*t).^2;
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(2,2,1);plot(t,x,'b');
title("x(t)=sinc(5pi*t).^2","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-2 -1.2 2 1.2]);
subplot(2,2,2);plot(omega,X,'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-30 -0.4 30  0.4]);

//Under sampling(period=0.2)
p=1;
r=0.2;
for n=t(1)/r:1:t($)/r
    x1(p)=sinc(5*%pi*r*n).^2;
    p=p+1;
end
x1=x1';
t1=t(1)/r:1:t($)/r;
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X1(p)=sum(x1.*exp(-%i*om*t1));
end
X1=round(X1*10000)/10000;
subplot(2,2,3);plot2d3(t1,x1,[2]);
title("Under sampling(T=0.2)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-2 -1.2 2 1.2]);
subplot(2,2,4);plot(omega,abs(X1),'r');
title("X(w): signal unrecoverable","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-20 -4 20  4]);

//Nyquist rate(period=0.1)
p=1;
r=0.1;
for n=t(1)/r:1:t($)/r
    x2(p)=sinc(5*%pi*r*n).^2;
    p=p+1;
end
x2=x2';
t2=t(1)/r:1:t($)/r;
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X2(p)=sum(x2.*exp(-%i*om*t2));
end
X2=round(X2*10000)/10000;
figure(2)
subplot(2,2,1);plot2d3(t2,x2,[2]);
title("sampling at Nyquist rate","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -1.2 4 1.2]);
subplot(2,2,2);plot(omega,abs(X2),'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-20 -4 20  4]);

//oversampling(period=0.05)
p=1;
r=0.05;
for n=t(1)/r:1:t($)/r
    x3(p)=sinc(5*%pi*r*n).^2;
    p=p+1;
end
x3=x3';
t3=t(1)/r:1:t($)/r;
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X3(p)=sum(x3.*exp(-%i*om*t3));
end
X3=round(X3*10000)/10000;
subplot(2,2,3);plot2d3(t3,x3,[2]);
title("oversampliing","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -1.2 4 1.2]);
subplot(2,2,4);plot(omega,abs(X3),'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-20 -4 20  4]);
