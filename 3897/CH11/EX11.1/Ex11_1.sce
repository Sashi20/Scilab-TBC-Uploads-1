clc; clear;
// Example 11.1
// Page 355
// Given data
Vi=15; // initial volume, m^3
Vf=3; // final volume, m^3
r=90; // required reduction in percent
//estimation part a
PVR=(Vi-Vf)/Vi*100; // percent volume reduction, in precent, from eq 11-1
CR=Vi/Vf; // compaction ratio, from eq 11-2
// part b
Vf=Vi-(r*Vi/100); // final volume, m^3
CR_b=Vi/Vf; // compaction ratio ofr part b
printf('The percent volume reduction = %f percent\n',PVR)
printf('The compaction ration for part a= %f \n',CR)
printf('The compaction ration for part b= %f',CR_b)
clear
