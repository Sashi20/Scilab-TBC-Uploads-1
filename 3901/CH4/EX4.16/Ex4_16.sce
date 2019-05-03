//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 

//use laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\laplace.sci', -1)

clc
Syms t s;
y1 =laplace('24*%e^(-3*t)+48*%e^(-4*t)',t,s);
disp(y1,"y1=")
y2 =laplace('16*%e^(-3*t)-12*%e^(-4*t)',t,s);
disp(y2,"y2")
