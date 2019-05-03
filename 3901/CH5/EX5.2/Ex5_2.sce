//This code needs symbolic tool(scilab-scimax) to be instaslled
//The tool should be installed properly in Ubuntu-14.04 and scilab-5.5.0 as it may not work in higher versions

clc
Syms n z;
Wo =%pi/4;
a = (0.33)^n;
x1=%e^(sqrt(-1)*Wo*n);
X1=symsum(a*x1*(z^(-n)),n,0,%inf)
x2=%e^(-sqrt(-1)*Wo*n)
X2=symsum(a*x2*(z^(-n)),n,0,%inf)
X =(1/(2*sqrt(-1)))*(X1+X2)
disp(X,"ans1=")

//*****************part(a)*******************8
X=symsum(1*(z^(-n)),n,0,0);
disp(X,"ans2=")

//*****************part(b)*******************8
X=symsum(1*(z^(-n)),n,0,4);
disp(X,"ans3=")

//*****************part(c)*******************8
X=symsum(1*(z^(-n)),n,0,%inf);
disp(X,"ans4=")
