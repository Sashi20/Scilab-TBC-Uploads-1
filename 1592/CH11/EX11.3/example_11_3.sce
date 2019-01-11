//Scilab Code for Example 11.3 of Signals and systems by
//P.Ramakrishna Rao
//Hilbert Transform
clc;
clear;
n=1;
for t=-1:0.01:1
    xr(n)=exp(%i*2*%pi*t);
    n=n+1;
end
//Computing Hilbertb Transform
x1=hilbert(real(xr));
x2=hilbert(imag(xr));
x=x1+x2;
t=-1:0.01:1;
plot(t,xr);
title('Given Signal x(t)');
xlabel('time t--&gt;');
figure(1);
t=-1:0.01:1;
plot(t,imag(x));
title('Hilbert Transform');
xlabel('time t--&gt;');