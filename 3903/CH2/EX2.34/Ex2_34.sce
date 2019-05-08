// Chapter No : 2  Exercise Number : 2.34 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 36 of the book will do the following operations                         |
//|1. Finding the residue matrix A in Z(26)
//|2. Finding the multiplication inverse for A
//|3. Print the result in the scilab command line
clc;
clear;

A = [3,5,7,2;
     1,4,7,2;
     6,3,9,17;
     13,5,4,16]
     

B(4,4) = 0

x=[1:4]
y=[1;2;3;4]
for i=1:4
    for j=1:4
        row=find(x~=i)
        col=find(x~=j)
        T=A(row,col)
        element=((-1)^(i+j))*det(T)
        B(i,j)=pmodulo(element,26)
    end
end

detA=pmodulo(det(A),26)
for i=1:25
    if(pmodulo(i*detA,26)==1)
        detAI=i
    end
end
C=B'
disp(pmodulo(C*detA,26))

