// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-8
//Refer Problem 15-7
//Given
C=0.00100; // Capacitance in muF
f=0; //frequency

//Computations
X_C=-1/(2*%pi*f*10^6*C*10^-6); // in ohms

if isinf(X_C)==%F
    printf("The capacitive reactance, X_C = %.0f ohms.",X_C)
end

if isinf(X_C)==%T
    printf("The capacitance is extremely large negative i.e. negative infinity. \n The capacitor is an open circuit.")
end
