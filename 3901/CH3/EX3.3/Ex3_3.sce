clc
clear

n=[0:1:5];
// Defining unit step function 
function y=u(x)
   y=sign((sign(x)+1))
endfunction

n=0:1:11;
f=n.*(u(n)-u(n-5))+4.*(u(n-5)-u(n-11))-2.*(n==8);//defining the given function
plot2d3(n,f,[5])
title("given signal","fontsize",4)
