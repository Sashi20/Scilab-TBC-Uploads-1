clc
clear;
close;

t=0:0.1:20;
pi=%pi;
n=[0:20];
p=1;
//finding x(t) and y(t) from fourier series co-efficients
for t1=t
    cx=0;
    cy=0;
    for n1=n
        cx=cx+(2/(pi*(1-4*n1.^2)))*exp(%i*2*n1*t1);
        cy=cy+(2/(pi*(1-4*n1.^2)*(1+6*%i*n1)))*exp(%i*2*n1*t1);
    end
    x(p)=cx;
    y(p)=cy;
    p=p+1;
end
subplot(1,2,1);plot(t',x);title("output of rectifier(x(t))","font_size",4);
subplot(1,2,2);plot(t',y);title("output across capacitor(y(t))","font_size",4)
zoom_rect([t(1) 0 t($) 1]);
//finding ripple
DC=2/%pi;
power=0;
for n=1:50
    Dn(n)=2/(pi*(1-4*n.^2)*(1+6*%i*n));
    power=power+2*sum((abs(Dn(n))).^2);
end
rms=sqrt(power);
printf("\n DC value of output is %.2f and ripple(rms) is %.2f\n",DC,rms);
