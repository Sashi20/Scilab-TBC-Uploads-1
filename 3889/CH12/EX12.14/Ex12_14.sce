//Example 12.14
//page 824
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s;
A=[-2 1; 1 -2]
B=[1;0]
C=[1;-1]'
D=[0]
U=obsv_mat(A,C)

disp(U,'Observability matrix=')
H=syslin('c',A,B,C,D)
disp(spec(A),'Eigen Values of A=')
H2=ss2tf(H)
disp(H2,'Transfer function =')

