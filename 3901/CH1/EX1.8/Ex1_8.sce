clc
clear

t=0:0.01:4*%pi;
odd=0.5.*(exp(%i.*t)-exp(-%i.*t));//finding odd component of given signal
even=0.5.*(exp(%i.*t)+exp(-%i.*t));//finding even component of given signal

subplot(2,2,1);plot(t,abs(even));//plotting the even part
title("even signal","fontsize",4);
xlabel("time(sec)","fontsize",4),ylabel("abs_value","fontsize",4);

subplot(2,2,3);plot(t,phasemag(even));
title("even signal","fontsize",4);
xlabel("time(sec)","fontsize",4);ylabel("phase(in degree)","fontsize",4);
h=gca();
zoom_rect(h,[0,-10,14,200]);

subplot(2,2,2);plot(t,abs(odd));//plotting the odd part
xlabel("time(sec)","fontsize",4),ylabel("abs_value","fontsize",4);
title("odd signal","fontsize",4);

subplot(2,2,4);plot(t,phasemag(odd));
xlabel("time(sec)","fontsize",4);ylabel("phase(in degree)","fontsize",4);
title("odd signal","fontsize",4);
