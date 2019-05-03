clc
clear
close

n=[0:20];
x=(4.^(-n));
h=((-0.2).^n+4*(0.8).^n);
c=convol(x,h);//discrete convolution

plot2d3(n,c(1:length(n)),[5]);title("Zero state Response","fontsize",4);
