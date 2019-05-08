// Chapter No : 2  Exercise Number : 2.38 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Student Shreya Rajiv Somkuwar(15BCE1225), Student J Robin Raj(15BCE1325) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 38 of the book will do the following operations                         |
//|1. Solve the equations:
////| i) 3x + 5y +7z = 3 (mod 16) 
////| ii) x + 4y +13z = 5 (mod 16) 
////| iii) 2x + 7y +3z = 4 (mod 16) 
//|2. Print the solution in the scilab command line 
clc;
clear;
A=[3,5,7;
   1,4,13;
   2,7,3]
B=[3;
   5;
   4]

AI(3,3)=0
x=[1:3]
y=[1;2;3]
for i=1:3
    for j=1:3
        row=find(x~=i)
        col=find(x~=j)
        T=A(row,col)
        element=((-1)^(i+j))*det(T)
        AI(i,j)=pmodulo(element,16)
    end
end

detA=pmodulo(det(A),16)
for i=1:15
    if(pmodulo(i*detA,16)==1)
        detAI=i
    end
end
C=AI'
AI=pmodulo(C*detAI,16)

disp(pmodulo(AI*B,16))
