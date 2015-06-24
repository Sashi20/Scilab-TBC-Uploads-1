clc
//initialisation of variables
N= 6*10^23 //molcules
R= 0.0821 //lit atm mole^-1
V= 20 //lit
P= 730 //mm of Hg
T= -20 //C
//CALCULATIONS
M= N*P*V/(760*R*(273+T))
//RESULTS
printf (' Molecules = %.2e molecules',M)
