clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

deff('[y]=f(x)','y=exp(x./2).*(u(x+5)-u(x+1))');//defining the signal function
t=-6:0.01:6;

subplot(2,1,1);
h=gca();
zoom_rect(h,[-6,0,6,0.8]);  //setting limits of the plot
plot(t,f(t));             //plotting original signal
h.grid=[1,1];
xtitle("original signal","t","x(t)");

subplot(2,1,2);
h=gca();
zoom_rect(h,[-6,0,6,0.8]); 
plot(t,f(-t));             //plotting reversed signal
h.grid=[1,1];
xtitle("reversed signal","t","x(-t)");
