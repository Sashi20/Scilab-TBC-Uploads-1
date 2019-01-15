// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.15
clc
clear
//Given Data Set in the Problem
dens=1000
g=9.81
SG1=0.6
SG2=0.9

//calculations
L=poly(0,"L")
d=poly(0,"d")
AG=L/2
h=%pi/4*SG1*dens*g*L/(%pi/4*SG2*dens*g)
AB=h/2
BG=AG-AB
//for ,meta centric height ;
I=%pi/64*d^4
ratio=coeff(h)
function [f]=F(k)
   f(1)=(%pi*(k(1)^4)/64)/(%pi*(k(1)^2/4)*ratio(2)*k(2))-k(2)/6
   f(2)=0          //k(1)=d and k(2)=L
endfunction
k=[0.1 0.1];
y=fsolve(k,F);
mprintf("The ratio of L/D has to be less than %.2f \n",y(2)/y(1))
