// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.13
clc
clear
//Given Data Set in the Problem
d1=1000
d2=900
g=9.81
A=10
a=0.25
h=1
//Equating pressures
function [f]=F(k)
   f(1)=(d1*g)*(k(1)+k(2)+k(1)*a/A)-(d2*g)*(k(1)+k(3)-k(1)*a/A)-98.1
   f(2)=k(2)-(d2*g*k(3))/(d1*g)
   f(3)=0
endfunction
k=[1 1 10];
y=fsolve(k,F);
mprintf("The displacement of the surface of separation is %.4f m\n",y(1))
