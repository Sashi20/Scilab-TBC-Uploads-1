//gray code to binary conversion//
//Example 27.c//
//gray code to binary//
clc
//clears the console//
clear
//clears all existing variables//
a=1101110
for i=1:7
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
y(7)=x(7)
k=6
while(k>0)
  if (bitand(y(k+1),x(k))==1) then
    a=bitand(y(k+1),x(k))
    y(k)=bitcmp(a,1)
else
    y(k)=bitor(y(k+1),x(k))
    end
    k=k-1
end           
z=0
for i=1:7
    z=z+y(i)*(10^(i-1))
end
disp(z)
disp('equivalent binary code is displayed')
