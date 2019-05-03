//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 


clc
//use inv_laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\inv_laplace.sci', -1)
//********************************part(a)**********************
Syms t s;
[A]=pfss((7*s-6)/((s^2-s-6))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
Fa = F1+F2;
disp(Fa,"fa(t)=")

//(****************************part(b)*************************
[A]=pfss((2*s^2+5)/((s^2-3*s+2))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
Fb = F1+F2;
disp(Fb,"fb(t)=")

//**************************part(c)***************************
[A]=pfss((6*(s+34))/(s*(s^2+10*s+34))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
Fc = F1+F2;
disp(Fc,"fc(t)=")
