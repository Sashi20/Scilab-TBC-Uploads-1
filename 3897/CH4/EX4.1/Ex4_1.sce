clc; clear;
// Example 4.1
// Page 97
// Given data
sol=500; // aqueous sal solution, mL
salt=125; // salt dissolved in solution, mg
//estimation
C_a=salt/sol*1000; // concentration of solution, in mg/L
C_b=C_a; // concentration of solution, in ppm
C_c=C_a*(1/17.1); // concentration of solution, in gpg
C_d=(salt/1000)/sol*100; // concentration of solution, in percent
C_e=C_a*8.34; // concentration of solution, in lb/mil gal
printf('The concentration of solution C= %f mg/L\n',C_a)
printf('The concentration of solution C= %f ppm\n',C_b)
printf('The concentration of solution C= %f gpg\n',C_c)
printf('The concentration of solution C= %f percent\n',C_d)
printf('The concentration of solution C= %f lb/mil gal',C_e)
clear




