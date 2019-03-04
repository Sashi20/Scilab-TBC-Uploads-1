//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.2
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

tau=2E-9;//Carrier recombination lifetime in s
Ith=90E-3;//threshold current in A
Ip=40E-3;//amplitude of modulation current in A

Ib=80E-3;//Assumed bias current in A
Td=tau*log(Ip/(Ip+Ib-Ith));

mprintf("The delay time for broad-area laser diode = %.2f ns",Td*1E+9);
