clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

deff('[y]=f(x)','y=exp(-2.*x).*u(x)');//defining the signal function
t=-2:0.01:7;

subplot(3,1,1);plot(t,f(t));set(gca(),"grid",[1,1]);xtitle("original signal");//plotting original signal
subplot(3,1,2);plot(t,f(t-1));set(gca(),"grid",[1,1]);xtitle("delayed signal");//plotting delayed signal
subplot(3,1,3);plot(t,f(t+1));set(gca(),"grid",[1,1]);xtitle("advanced signal");//plotting advanced signal
