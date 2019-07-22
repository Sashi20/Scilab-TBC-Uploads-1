// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 13-5
//Given
V_pk_pk=60; //peak to peak value of the wave, V

//Computations
V_pk=V_pk_pk/2; //peak voltage, V

printf("The peak voltage is %.0f V pk.\nHalf the peaks are +%d V; half are %d V.",V_pk,V_pk,-V_pk)
