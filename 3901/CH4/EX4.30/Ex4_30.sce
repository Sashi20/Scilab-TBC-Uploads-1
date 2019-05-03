//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 

//use inv_laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\inv_laplace.sci', -1)
clc

Syms s t;
[A] = pfss((-1)/((s-1)*(s+2)));//partial fraction of transfer function
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F = F1+F2
disp(F)
