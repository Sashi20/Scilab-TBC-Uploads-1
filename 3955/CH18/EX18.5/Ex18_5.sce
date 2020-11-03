//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 18: THERMAL PROPERTIES OF MATTER
//EX 18.5: ATOMIC AND MOLECULAR MASS
clc;
clear;
Na=6.022*10^23; //avogadro's number
M_H=1.008; //molar mass of Hydrogen atom in g/mol
m_H=M_H/Na; //mass of single Hydrogen atom in g
M_o2=32; //molar mass of Oxygen molecule in g/mol
m_o2=M_o2/Na; //mass of single Oxygen molecule in g
printf('Mass of single Hydrogen atom: %e g',m_H);
printf('\nMass of single oxygen molecule: %e g',m_o2);
