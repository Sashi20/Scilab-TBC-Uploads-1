clc
clear
close;
//taking tau=2
t=-4:0.009:4;
dt=0.009;
x=1.*((t>=-1)&(t<=1));
omega=-20:0.009:20;
p=0;
for om=-20:0.009:20
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x,'k');
title("given signal-rect(t/2)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -2 4 2]);
subplot(1,2,2);plot(omega,X,'r');
title("X(w)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-20 -2 20 2]);

figure(2)
subplot(1,2,1);plot(omega,abs(X),'r');
title("|X(w)|","fontsize",4);
subplot(1,2,2);plot(omega,-phasemag(X)*%pi/180,'r');
title("phase(X(w))","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-20 -4 20 4]);
