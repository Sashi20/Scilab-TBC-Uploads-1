clear;
close;
clc;
W=%pi/4;
w=-10:0.1:10;
for i=1:length(w)
    if (w(i)&gt;=-2*%pi-W &amp; w(i)&lt;=-2*%pi+W)  then
   X(i)=1;
elseif (w(i)&gt;=-W &amp; w(i)&lt;=W)
    X(i)=1;
elseif (w(i)&gt;=2*%pi-W &amp; w(i)&lt;=2*%pi+W)
    X(i)=1;
else
    X(i)=0;
    end
end
figure;
subplot(2,1,1)
plot(w,X);
title("X[w]");
n=-15:15;
x=X'*exp(-%i*w'*n);
subplot(2,1,2)
plot2d3(n,x);
plot(n,x,'r.')
title("x[n] inverse fourier transform")