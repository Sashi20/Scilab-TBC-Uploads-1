//This code needs symbolic tool(scilab-scimax) to be instaslled
//The tool should be installed properly in Ubuntu-14.04 and scilab-5.5.0 as it may not work in higher versions

clc
Syms n z;
a = 0.5;
x =(a)^n;
n1=0:10;
plot2d3(n1,a^n1); xtitle('a^n','n');
plot(n1,a^n1,'r.')
X = symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")
