clc
clear
close;

t=0:0.001:2;
dt=0.001;
x=ones(1,length(t));
omega=-20:0.001:20;
X=1.*(omega==0);
subplot(1,2,1);plot(t,x,'k');
title("given signal-constant function","fontsize",4);
subplot(1,2,2);plot(omega,abs(X),'r');
title("X(w)","fontsize",4);
