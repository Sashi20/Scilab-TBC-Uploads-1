// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 16-3
//Refer Problem 16-2
//Given
I_g=23.5; //current gain at ideal condition
f=1000; //operating frequency, Hz
f_alpha=900; //alpha cutoff, kHz
I_i=2.00; //peak to peak signal input current, mA

//Computations
I_o=I_i*I_g*0.707; //peak to peak output signal current at 900 kHz, mA

printf("The pk-pk output signal current is %.1f mA.",I_o) // The unit in book answer is mistakenly written as muA (microamperes).
