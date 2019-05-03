//This code needs symbolic tool(scilab-scimax) to be instaslled
//The tool should be installed properly in Ubuntu-14.04 and scilab-5.5.0 as it may not work in higher versions

clc
Syms n z;
a=0.9
b = 1.2;

x1=(a)^(n)
x2=(b)^(-n)
X1=symsum(x1*(z^(-n)),n,0,%inf)
X2=symsum(x2*(z^(n)),n,1,%inf)
X = X1+X2;
disp(X,"ans=")
