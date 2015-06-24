clc

// 0.506H2 + 0.1CO + 0.26CH4 + 0.04C4H8 + 0.004O2 + 0.03CO2 + 0.06N2 + 0.21 × 7O2 + 0.79 × 7N2 → a CO2 + b H2O + c O2 + d N2

a=0.1*0.26+4*0.04+0.03;
b=(2*0.506+4*0.26+8*0.04)/2;
c=(0.1+2*0.004+2*0.03+0.21*7*2-2*a-b)/2;
d=(2*0.06+2*0.79*7)/2;

n=0.55+0.411+5.59;

disp("analysis by volume is")
disp("CO2=")
CO2=0.55/n*100;
disp(CO2)
disp("%")

disp("O2=")
O2=0.411/n*100;
disp(O2)
disp("%")

disp("N2 =")
N2=5.59/n*100;
disp(N2)
disp("%")