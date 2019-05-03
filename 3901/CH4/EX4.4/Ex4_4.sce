clc
//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 
//use laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\laplace.sci', -1)
Syms t s;
a = 3;
T = 1;
y1 = laplace('t',t,s);
y2 = laplace('t',t,s);
y3 = laplace('1',t,s);
y=y1*(%e^(-s))+y2*(%e^(-2*s))+y3*(%e^(-4*s))
disp(y)
