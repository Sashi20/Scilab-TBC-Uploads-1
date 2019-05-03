//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 
//use inv_laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\inv_laplace.sci', -1)
clc

s1 =%s ;
Syms t s;
[A]=pfss((s1+3)/((s1+1)*(s1+2))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
Fa = F1+F2;
disp(Fa,"f1(t)=")
[B]=pfss((5)/((s1+1)*(s1+2))); //partial fraction of F(s)
F1 = ilaplace(B(1),s,t)
F2 = ilaplace(B(2),s,t)
Fb = (F1+F2)*(%e^(-2*s));
disp(Fb,"f2(t)=")
disp(Fa+Fb,"f(t)=")
