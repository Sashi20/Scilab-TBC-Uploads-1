clc
clear

n=[0:1:5];
// Defining unit step function 
function y=u(x)
   y=sign((sign(x)+1))
endfunction
    
f=n.*(u(n)-u(n-6));//defining the given function
subplot(1,2,1);plot2d3(n,f);
title("figure(a)","fontsize",4);
f2=repmat(f,1,5);
n1=0:1:length(f2)-1;
subplot(1,2,2);plot2d3(n1,f2,[5]);title("figure(b)","fontsize",4);
energy=sum(f.^2);//finding energy of signal in fig(a)
power=(1/6).*sum(f.^2);//finding power of signal in fig(b)

printf("\nthe energy in fig (a) is %.2f and power in fig(b) is %.2f\n",energy,power);//rounding off the answer to two digits
