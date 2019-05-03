clc
clear
close;

t=[0:0.1:5];
// Defining unit step function 
    function y=u(x)
        y=sign((sign(x)+1))
    endfunction

x=exp(-t).*u(t);//defining the iinput function
h=exp(-2*t).*u(t);//defining the impulse response

subplot(3,1,1);plot(t,x,'b');
title("input signal(e^(-t)","fontsize",4);

subplot(3,1,2);plot(t,h,'r');
title("impulse response(e^(-2t))","fontsize",4);

[z]=convol(x,h); //operating convolution operation
subplot(3,1,3);
plot2d(z);
title("convoluted signal","fontsize",4);
printf("the obtained graph should be iinterpolated back to t=0 to get completre ZSR")
