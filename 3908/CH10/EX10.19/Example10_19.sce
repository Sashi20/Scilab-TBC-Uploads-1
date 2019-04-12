//Example 10_19
clc;
clear;
close;

//Given data :
a=103.71;// Reduced level at A in m
b=103.85;// Reduced level at B in m
c=104.35;// Reduced level at C in m
d=104.95;// Reduced level at D in m
e=104.09;// Reduced level at E in m
f=104.05;// Reduced level at F in m
g=104.25;// Reduced level at G in m
h=104.65;// Reduced level at H in m
i=104.95;// Reduced level at I in m
j=104.29;// Reduced level at J in m
k=104.45;// Reduced level at K in m
l=104.95;// Reduced level at L in m
m=104.75;// Reduced level at M in m
n=105;// Reduced level at N in m
o=104.7;// Reduced level at O in m
p=105.05;// Reduced level at P in m
q=104.85;// Reduced level at Q in m
rl=101.85;// Reduced level of excavation in m
A=a-rl;// Depth at A in m
B=b-rl;// Depth at B in m
C=c-rl;// Depth at C in m
D=d-rl;// Depth at D in m
E=e-rl;// Depth at E in m
F=f-rl;// Depth at F in m
G=g-rl;// Depth at G in m
H=h-rl;// Depth at H in m
I=i-rl;// Depth at I in m
J=j-rl;// Depth at J in m
K=k-rl;// Depth at K in m
L=l-rl;// Depth at L in m
M=m-rl;// Depth at M in m
N=n-rl;// Depth at N in m
O=o-rl;// Depth at O in m
P=p-rl;// Depth at P in m
Q=q-rl;// Depth at Q in m
h1=A+E+J+N+Q+O;// A,E,J,N,Q,O are used once
h2=B+C+D+F+K+P;// B,C,D,F,K,P are used twice
h3=I+M;// I,M are used thrice
h4=G+H+L;// G,H,L is used four times
a=10;// side of square in m
A=a*a;// Area in sq. m
V=A*(h1+(2*h2)+(3*h3)+(4*h4))/4;// Volume of excavation in cubic m
disp(V,"Volume of excavation in cubic m");
// The answer provided in the textbook is wrong
