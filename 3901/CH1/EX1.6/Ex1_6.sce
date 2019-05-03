clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

deff('[y]=f(x)','y=t.*(u(t)-u(t-2))-2*(t-3).*(u(t-2)-u(t-3))');//finding expression for the given signal
t=-0.5:0.01:3.5;

subplot(3,2,2);plot(t,f(t));//plotting the signal
h=gca();
h.grid=[1,1]
xtitle("Original Signal x=(x1+x2)","t","x(t)")
zoom_rect([-0.5, 0, 3.5, 2.3]);

subplot(3,2,3);plot(t,t);plot(t,1.*(u(t)-u(t-2)),'--r');
h=gca();
h.grid=[1,1]
xtitle("Formation of x(t) in [0,2]","t","x1(t)");
zoom_rect([-0.5, 0, 3.5, 2.3]);

subplot(3,2,4);plot(t,t.*(u(t)-u(t-2)));
h=gca();
h.grid=[1,1]
xtitle("x1","t","x1(t)");
zoom_rect([-0.5, 0, 3.5, 2.3]);

subplot(3,2,5);plot(t,-2*(t-3));plot(t,1.*(u(t-2)-u(t-3)),'--r');
h=gca();
h.grid=[1,1]
xtitle("Formation of x(t) in [2,3]","t","x2(t)");
zoom_rect([-0.5, 0, 3.5, 2.3]);

subplot(3,2,6);plot(t,(-2*(t-3)).*(u(t-2)-u(t-3)));
h=gca();
h.grid=[1,1]
xtitle("x2","t","x2(t)");
zoom_rect([-0.5, 0, 3.5, 2.3]);
