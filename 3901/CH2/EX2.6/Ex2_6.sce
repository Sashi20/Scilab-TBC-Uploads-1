clc
clear
close;

t=[0:0.1:5];
// Defining unit step function 
    function y=u(x)
        y=sign((sign(x)+1))
    endfunction

x=10.*exp(-3*t).*u(t);//defining the iinput function
h=(2.*exp(-2*t)-exp(-t)).*u(t);//defining the impulse response

subplot(3,1,1);plot(t,x,'b');
legend("input signal(e^(-t)");

subplot(3,1,2);plot(t,h,'r');
legend("impulse response(e^(-2t)");

[z]=convol(x,h); //operating convolution operation
subplot(3,1,3);
plot2d(z);
legend("convoluted signal");
printf("the obtained graph should be iinterpolated back to t=0 to get completre ZSR")