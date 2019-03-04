//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 14.1.1
clc;
clear all;
//given
H=4.16E6;//Information carrying capacity(that is bandwidth) of a transmission line in bit
C=56E3;//time of transmission in bit/s

//By Hartley's law
T=H/C;

mprintf("It takes %.2f sec to download %.2f bits from internet to PC",T,H);
