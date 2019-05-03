clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

deff('[y]=f(x)','y=2.*(u(t+1.5)-u(t))+2.*exp(-t./2).*(u(t)-u(t-3))');//finding expression for the given signal
t=-4:0.01:4;

plot(t,f(t));//plotting the signal
h=gca();
h.grid=[1,1];
zoom_rect(h,[-4 0 4 3])
