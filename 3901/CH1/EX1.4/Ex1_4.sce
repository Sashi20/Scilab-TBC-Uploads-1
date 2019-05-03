clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

deff('[y]=f(x)','y=2.*exp(-x./2).*(u(x)-u(x-3))+2.*(u(x+1.5)-u(x))');//defining the signal function
t=-4:0.01:7;

subplot(3,1,1);
h=gca();
zoom_rect(h,[-4 0 7 3]);  //setting limits of the plot
plot(t,f(t),'r');             //plotting original signal
h.grid=[1,1];
xtitle("original signal");

subplot(3,1,2);
h=gca();
zoom_rect(h,[-4 0 7 3]); 
plot(t,f(3.*t),'r');             //plotting compressed signal
h.grid=[1,1];
xtitle("signal compressed by factor 3");

subplot(3,1,3);
h=gca();
zoom_rect(h,[-4 0 7 3]); 
plot(t,f(t./2),'r');             //plotting expanded signal
h.grid=[1,1];
xtitle("signal expanded by factor 2");
