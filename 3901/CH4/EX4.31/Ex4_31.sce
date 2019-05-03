//scilab symbolic toolbox(scilab-scimax) is needed for this code
//symbolic toolbox should be strictly installed in Ubuntu-14.04 and Scilab-5.0.0 as it's not supported in higher versions 

//use inv_laplace.sci before this code using correct path]
//exec('C:\Users\Satyajit\Desktop\sample_codes\inv_laplace.sci', -1)
clc
Syms t s;
//for  Re s>-1
[A] = pfss(1/((s+1)*(s+5)));//partial fraction of transfer function
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F = F1+F2
disp(F,"for Re(s)>-1")

//for -5< Re s <-2
[B] = pfss(-1/((s+2)*(s+5)));//partial fraction of transfer function
G1 = ilaplace(B(1),s,t)
G2 = ilaplace(B(2),s,t)
G = G1+G2
disp(G,"for -5<Re(s)<-2")
