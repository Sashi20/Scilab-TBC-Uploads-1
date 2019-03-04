//Example 12.10
//page 819
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s
A=[0 1 0 0 ; 4.4537 0 0 0; 0 0 0 1; -0.5809 0 0 0]
B=[0;-0.3947;0;0.9211]
U=cont_mat(A,B)
disp(U,'Controllability matrix=')
l1=size(U)
l=l1(1)
if rank(U)==l then
    disp('Controllable system')
else
    disp('Not Controllable system')
end
