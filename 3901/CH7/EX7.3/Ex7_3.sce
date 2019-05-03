clc
clear
close;

t=-2:0.001:2;
dt=0.001;
x=1.*(t==0);
omega=-20:0.001:20;
X=ones(1,length(omega));
subplot(1,2,1);plot(t,x,'k');
title("given signal-constant function","fontsize",4);
subplot(1,2,2);plot(omega,abs(X),'r');
title("X(w)","fontsize",4);
