clc
clear
close

function y=u(x)
    y=sign(sign(x)+1);
endfunction

n=-1:10;
x=((0.8).^n).*u(n);
g=((0.3).^n).*u(n);

c=convol2d(x,g);//discrete convolution

plot2d3(0:length(c)-1,c,[5]);
zoom_rect([-1 min(c) 10 max(c)]);
title("convoluted signal","fontsize",4)
