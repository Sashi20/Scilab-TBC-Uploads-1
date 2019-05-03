//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 
//use laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\laplace.sci', -1)
clc
Syms t s;
a = 3;
y =laplace('%e^(-a*t)',t,s);//finding laplace transform
t1=0:0.001:8;
plot(t1,exp(-a*t1),'r');
title("x(t)=e^-at","fontsize",4);
disp(y)
y1 = laplace('%e^(a*-t)',t,s);//finding laplace transform
disp(y1)
