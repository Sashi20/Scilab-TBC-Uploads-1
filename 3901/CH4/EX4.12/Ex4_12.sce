//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 

//use inv_laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\inv_laplace.sci', -1)
clc
Syms t s;
[A] = pfss((3*s+3)/((s+5)*(s^2+5*s+6)));
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F3 = ilaplace(A(3),s,t)
F = F1+F2+F3
disp(F,"system_solution=")
