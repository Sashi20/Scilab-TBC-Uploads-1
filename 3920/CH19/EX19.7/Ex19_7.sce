// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-7
//Refer Problem 19-6
q20=20; //absolute field view with 20-mm eyepiece in arc minutes
f_e1=20; //initial eye-piece focal length, mm
f_e2=10; //replaced eye-piece focal length, mm

//Computations
 //As magnification, m = f_o / f_e, magnification is inversely proportional to f_e. Let m10 and m20 denotes the magnification with 10-mm and 20-mm eye-piece respectively. Then,
m10_by_m20=f_e1/f_e2; // ratio of magnification
//for same viewing angle,field of view is inversely proportional to magnification
q10=(1/m10_by_m20)*q20; //absolute field view eith 10-mm eye-piece, arc minutes

printf("The absolute field of view of the telescope using the %d-mm eyepiece is %.1f time as wide or %d arc minutes.",f_e2,1/m10_by_m20,q10)
