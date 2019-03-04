//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.3
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given
RIN=1E-16;//relative intensity in 1/Hz
P=100E-6;//power received in W
BW=100E+6;//Receiver bandwidth in Hz

Pn=sqrt(RIN*(P^2)*BW);

mprintf("The average noise power detected by receiver = %.2f micro-w",Pn*1E+6);
