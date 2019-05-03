clc
clear
close;

s=poly(0,'s')//polynomial definition

h=syslin('c',(s^2/s))
figure(1)
bode(h,0.1,100);

h1=syslin('c',(1/s))//polynomial definition
figure(2)
bode(h1,0.1,100);
