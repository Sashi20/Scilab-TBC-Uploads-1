clc
clear

A=[2,1,1;1,3,-1;1,1,1];//co-efficient matrix
b=[3;7;1];            //b matrix in the equation Ax=b

//finding modified matrices to find unknown variables
A1=[b A(1:3,2:3)];
A2=[A(1:3,1) b A(1:3,3)];
A3=[A(1:3,1:2) b];

//finding unknown variables using Cramer's rule
x1=(det(A1)/det(A))
x2=det(A2)/det(A)
x3=det(A3)/det(A)

printf("using cramers rule,we get: x1= %.0f , x2= %.0f , x3= %.0f \n",x1,x2,x3);
