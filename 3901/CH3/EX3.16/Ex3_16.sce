clc
clear
close

function y=u(x)
    y=sign(sign(x)+1);
endfunction

n=[-2:15];
x=n.*(u(n+2)-u(n-5));
g=1.*u(n);
c=convol2d(x,g);//discrete convolution

subplot(1,3,1);plot2d3(n,x,[5]);title("signal x(n)","fontsize",4);//plotting x[n]
set(gca(),"zoom_box",[-8 -6 8 6],"x_location","middle","y_location","middle");
subplot(1,3,2);plot2d3(n,g,[4]);title("signal g(n)","fontsize",4);//plotting g[n]
set(gca(),"zoom_box",[-8 -6 8 6],"x_location","middle","y_location","middle");
subplot(1,3,3);plot2d3([-4:length(c)-5],c,[2]);title("convoluted signal(x[n]*g[n])","fontsize",4);//plotting convoluted signal
set(gca(),"zoom_box",[-8 -8 8 8],"x_location","middle","y_location","middle");
