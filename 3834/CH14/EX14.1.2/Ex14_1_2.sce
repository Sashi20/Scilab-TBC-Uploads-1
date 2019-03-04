//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 14.1.2
clc;
clear all;
//given

lambda=1310;//operating wavelength in m
L=36;//Length of transport line in km
p=10;//linked power budget in dB
Lsm=0.6;//loss of SM fiber in db/km
Linkloss=Lsm*L;

mprintf("Link loss = %.1f dB\n Hence, we need to use in-line amplifier",Linkloss);
