 //Ex13_28 PG-13.14
clc
clear
disp("Conversion of decimal number 24.6 base  to its binary equivalent ")
a=24.6;
z=modulo(a,1)
x=floor(a);//separating the decimal from the integer part
b=0;
c=0;
d=0;
while(x>0)  //taking integer part into a matrix and convert to equivalent binary
y=modulo(x,2);
b=b+(10^c)*y;
x=x/2;
x=floor(x);
c=c+1;
end
for i=1:10;//converting the values after the decimal point into binary
    z=z*2;
    q=floor(z);
    d=d+q/(10^i);
    
    if z>=1 then
        z=z-1;
    end
end
s=b+d;
printf("\n The binary equivalent of the given decimal number 24.6 is =%.5f",s);

