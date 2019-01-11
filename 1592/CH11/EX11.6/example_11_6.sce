//Scilab Code for Example 11.6 of Signals and systems by
//P.Ramakrishna Rao
//Hilbert Transform
clc;
T=2;
A=1;
n=1;
for t=-10:0.01:10;
    if t&gt;-T/2 &amp; t<t 2="" then="" x(n)="A;" n="n+1;" else="" end="" t="-10:0.01:10;" signal="" x(t)="" plot(t,x);="" title('given="" x(t)');="" xlabel('time="" t--="">');
//Computing Hilbert Transform
xr=hilbert(x);
xr_imag=imag(xr);
figure(1);
t=-10:0.01:10;
plot(t,xr_imag);
title('Hilbert transform and associated signal');
xlabel('time t--&gt;');
</t>