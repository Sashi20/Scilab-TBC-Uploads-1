clc
clear

//defining transfer functions
num = -20+9*%s + 3*%s^2 ;//given numerator
den = (%s-2)*(%s+3); //given denominator
h2 = syslin('c',num/den);
d = pfss(h2,4,'c');    //finding partial fractions
disp("the obtained partal fractions are");
disp(d) //displaying the partial fractions

