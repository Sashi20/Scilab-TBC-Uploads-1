clc
clear all
close;

t=0:0.001:6.3;
x=1.*((t>=0)&(t<%pi))-1.*((t>=%pi)&(t<=(2*%pi)));
p=[1,3,5,19];

x_approx=0;
for n=1:2:p(1)
    x_approx=x_approx+(4/%pi).*sin(n*t).*(1/n);
end
subplot(2,2,1);plot(t',x,'b');plot(t,x_approx,'r');
set(gca(),"x_location","middle","zoom_box",[t(1) -1.5 t($) 1.5]);
legend("actual_signal","approximated_signal(N=1)");

x_approx=0;
for n=1:2:p(2)
    x_approx=x_approx+(4/%pi).*sin(n*t).*(1/n);
end
subplot(2,2,2);plot(t',x,'b');plot(t,x_approx,'r');
set(gca(),"x_location","middle","zoom_box",[t(1) -1.5 t($) 1.5]);
legend("actual_signal","approximated_signal(N=3)");

x_approx=0;
for n=1:2:p(3)
    x_approx=x_approx+(4/%pi).*sin(n*t).*(1/n);
end
subplot(2,2,3);plot(t',x,'b');plot(t,x_approx,'r');
set(gca(),"x_location","middle","zoom_box",[t(1) -1.5 t($) 1.5]);
legend("actual_signal","approximated_signal(N=5)");

x_approx=0;
for n=1:2:p(4)
    x_approx=x_approx+(4/%pi).*sin(n*t).*(1/n);
end
subplot(2,2,4);plot(t',x,'b');plot(t,x_approx,'r');
set(gca(),"x_location","middle","zoom_box",[t(1) -1.5 t($) 1.5]);
legend("actual_signal","approximated_signal(N=19)");

//Finding Error
E1=2*%pi-(16/%pi);//for N=1
E3=2*%pi-(16/%pi)*(1+1/9);//for N=3
print(E1)
print(E3)
