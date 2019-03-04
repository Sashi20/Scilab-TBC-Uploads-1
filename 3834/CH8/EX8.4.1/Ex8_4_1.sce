//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 8.4.1
//windows 8
//Scilab version-6.0.0
clc;
clear all;
//given

L=2000;//installation length in m
lambda=850E-9;//operating wavelength in m
deltalambda=20E-9;//spectral width in m
BW=16;//maximum bit rate in M bit/s
TAUltwrise=4;//rise time of light wave equipment in ns


TAUsystrise=0.35/BW;//total system rise time in ns
mprintf("Total system rise time= %.2f ns",TAUsystrise);
