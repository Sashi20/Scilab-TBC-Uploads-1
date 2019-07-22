// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-2
//Given
lambda_1=500; //wavelength in first medium, nm
c_2=2.00*10^8; //speed of light in second medium, m/s

//Data assumed
C_1=3.0*10^8; //speed of light in first medium. m/s

//Computations
 //As frequency does not change,
 lambda_2=(c_2/C_1)*lambda_1; // wavelength in second medium, nm
 
 printf("The wavelength in new medium is %d nm.",lambda_2)
