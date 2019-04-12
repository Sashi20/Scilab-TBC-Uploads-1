//Example 10_17
clc;
clear;
close;

//Given data :
p=121.38;// Reduced level at P in m
q=119.64;// Reduced level at Q in m
r=120.32;// Reduced level at R in m
s=121.68;// Reduced level at S in m
rl=118.17;// Reduced level of excavation in m
l1=3;// Length of PS in m
l2=7.5;// Length of QR in m
d=6;// Distance between PS and QR in m
A=(l1+l2)*d/2;// Area of excavation in sq. m
hp=p-rl;// Height at P in m
hq=q-rl;// Height at Q in m
hr=r-rl;// Height at R in m
hs=s-rl;// Height at S in m
ah=(hp+hq+hr+hs)/4;// Average height in m
V=A*ah;// Volume in cubic m
disp(V,"Volume in cubic m");
// The answers vary due to round off error
