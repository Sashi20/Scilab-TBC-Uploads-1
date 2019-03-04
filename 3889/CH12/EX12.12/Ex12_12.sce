//Example 12.12
//page 821
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s
A=[0 1 0 0 ; 4.4537 0 0 0; 0 0 0 1; -0.5809 0 0 0]
B=[0;-0.3947;0;0.9211]
C=[1;0;0;0]'
U=obsv_mat(A,C)
disp(U,'Observability matrix=')
l1=size(U)
l=l1(1)
if rank(U)==l then
    disp('Observable system')
else
    disp('Not Observable system')
end
C2=[0;0;1;0]'
U2=obsv_mat(A,C2)
disp(U2,'Observability matrix=')
l1=size(U2)
l=l1(1)
if rank(U2)==l then
    disp('Observable system')
else
    disp('Not Observable system')
end
