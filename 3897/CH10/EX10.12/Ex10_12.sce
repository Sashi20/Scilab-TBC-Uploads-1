clc; clear;
// Example 10.12
// Page 327
// Given data
V=5000000; // volume of sludge, gal
W=1000000; // dry sludge solids,lb
C=4; // conc of solids in sludge, percent
//estimation
S=(W/(8.34*V))*100; // solids content in sludge, percent
V=(W/(C*8.34))*100; // volume of sludge, gal
printf('The solid content in sludge = %f percent\n',S)
printf('The volume of sludge = %f gal\n',V)
clear




