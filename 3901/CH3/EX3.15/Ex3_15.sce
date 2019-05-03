clc
clear
close

function y=u(x)
    y=sign(sign(x)+1);
endfunction

n=[0:6];
x=((0.8).^n).*u(n);
g=((0.3).^n).*u(n);
c=convol2d(x,g);//discrete convolution

subplot(3,1,1);plot2d3(n,x,[5]);title("signal x(n)","fontsize",4);
subplot(3,1,2);plot2d3(n,g,[4]);title("signal g(n)","fontsize",4);
subplot(3,1,3);plot2d3(n,c(1:length(n)),[2]);title("convoluted signal","fontsize",4);
