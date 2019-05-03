//the result is the outer covering of the obtained plot
clc
clear
close;

t=-4:0.01:4;
dt=0.01;
x=sign(t);
omega=-80:0.01:80;
p=0;
for om=-80:0.01:80
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
subplot(1,2,1);plot(t,x,'b');
title("signum function","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -2 4 2]);
subplot(1,2,2);plot(omega,abs(X),'r');
title("|X(w)|","fontsize",4);
set(gca(),"y_location","middle");
//here absolute value of X(w) is shown
//if angle is included then right side part of fig 2 will be downwards
