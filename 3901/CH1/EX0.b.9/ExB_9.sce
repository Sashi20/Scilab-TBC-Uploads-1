clc
clear

//pfss is eficient for non-repeated roots

num = -11+9*%s + 2*%s^2 ;   //given numerator
den = (%s+1)*(%s-2)*(%s+3); //given denominator
h2 = syslin('c',num/den);
d = pfss(h2);
disp("the obtained partal fractions are");
disp(d)          //displaying the partial fractions

