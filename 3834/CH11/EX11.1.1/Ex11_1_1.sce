//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.1.1
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

R=0.85;//Responsivity od photodiode in A/W
P=1E-3;//Input power saturation in W

Ip=R*P;
mprintf("The photocurrent =%.2f mA",Ip*1E+3);
