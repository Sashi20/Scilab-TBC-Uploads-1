//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 

//use laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\laplace.sci', -1)

//(a) laplace transform of delta(t)
Syms t s;
y =laplace('0',t,s)
disp(y)

//(b) Laplace Transform of u(t)
y1 =laplace('1',t,s);
disp(y1)

//(c) laplace transform of cos(w0*t)u(t)
y2 =laplace('cos(w0*t)',t,s);
disp(y2)
