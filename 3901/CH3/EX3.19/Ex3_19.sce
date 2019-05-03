clc ;
clear ;
close ;


n =0:20;
x=(3.^n);
a =[1 -3 2];
b =[0 1 2];
y= filter (b,a,x);
plot2d3 (n,y/(10^9),[2]); 
title("forced respose","fontsize",4);
legend("scale(y-axis)=(10^9)")
