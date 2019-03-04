//Example 12.13
//page 823
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s;
A=[-2 1; 1 -2]
B=[1;1]
C=[0;1]'
D=[0]
U=cont_mat(A,B)

disp(U,'Controllability matrix=')
H=syslin('c',A,B,C,D)
disp(spec(A),'Eigen Values of A=')
H2=ss2tf(H)
disp(H2,'Transfer function =')

