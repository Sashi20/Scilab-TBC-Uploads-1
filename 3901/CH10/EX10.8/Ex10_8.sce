clc
//symbolic tool(scilab-scimax) is needed which should be installed properly in Ubuntu 14.04 and Scilab-5.5.0

Syms t s;
//execute the file ilaplace.sci to get inverse laplace 
//path should be correctly written 
exec('C:\Users\Satyajit\Desktop\sample_codes\ilaplace.sci',-1)

F1=ilaplace((s+3)/((s+1)*(s+2)))
F2=ilaplace(1/((s+1)*(s+2)))
F3=ilaplace(-2/((s+1)*(s+2)))
F4=ilaplace(s/((s+1)*(s+2)))
F=[F1 F2;F3 F4];
disp(F,"f(t)=")
A=[1 0;1 1;0 2];
B=[0 0;1 0;0 1];
h=A*F*[1 0;1 1]+B*eye(2,2);//including delta(t) function 
disp(h,"h(t)=")
