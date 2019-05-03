clc
clear

//finding eigen values of the given matrix
A=[0 1;-2 -3];
egn=spec(A);
disp("the eigen values are  ");disp(egn);

//finding exponential of a matrix
[N,d]=coff(A);
b=N/d;
b=pfss(b);
disp("the laplace transform of each elements of the exponential matrix(e^(At)) are given as partial fractions below");
disp("the ILT of this will result in exponential matrix function")
;disp(b);
//let P=exponential matrix(e^(At))
//then here from b we get
//P(1)=inv_laplace(2/(1+s)-1/(s+2))=2e^(-t)-e^(-2t)
//P(2)=inv_laplace(-2/(1+s)+2/(s+2))=-2e^(-t)+2e^(-2t)
//P(3)=inv_laplace(1/(1+s)-1/(s+2))=e^(-t)-e^(-2t)
//P(4)=inv_laplace(-1/(1+s)+2/(s+2))=-e^(-t)+2e^(-2t)
