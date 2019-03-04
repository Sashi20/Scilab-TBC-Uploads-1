//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.4.1
clc;
clear all;
//given


Oe=(10^3)/(4*%pi);
pfib=0.0128/Oe;//verdet's angle min/Oe-cm for silica fibre
pcry=9*60/Oe;//verdet's angle min/Oe-cm for BIG(Bi-substituted iron garnet) crystal
H=1000*Oe;//strength of magnetic field in A/m
phi=45*60;//angle in minutes

Lfib=phi/(pfib*H);
mprintf("Length of faraday rotators made from silica fibre= %.2f cm",Lfib);

Lcry=phi/(pcry*H);
mprintf("\nLength of faraday rotators made from silica fibre= %.2f mm",Lcry*10);
