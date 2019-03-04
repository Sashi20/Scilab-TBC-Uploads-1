//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.3.4
clc;
clear all;
//given
N1=1.487;//refractive index 
delta=1.71;
L=5E3;//length of the graded index fiber
c=3E8;//velocity of light in m/s

b=delta*delta;
e=L*N1*b;
w=8*c;
deltatg1=(e/w)*1E5;//pulse spreading due to modal dispersion
Q=(deltatg1/L)*1E3;//maximum bit rate

mprintf("\n pulse spreading due to modal dispersion=%.2f sec",deltatg1);
mprintf("\n maximum bit rate=%.2f sec/Km",Q);
