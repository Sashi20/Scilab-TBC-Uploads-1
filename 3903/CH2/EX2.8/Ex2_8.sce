// Chapter No : 2  Exercise Number : 2.8 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 20 of the book will do the following operations                         |
//|1. Finding the gcd of 25 and 60
//|2. Print the result in the scilab command line for each iteration
clc;
clear;
printf("  q    r1    r2    r \n")
a=25;
b=60;
q=int(a/b);
r=a-b*q;
printf("  %d   %d    %d    %d \n",q,a,b,r);
while r~=0,
    a=b;
    b=r;
    q=int(a/b);
    r=a-b*q;
    printf("  %d   %d    %d    %d \n",q,a,b,r);
end
printf("      %d     %d    \n",b,r);
printf("\nTherefore, gcd(%d, %d)=%d",25,60,b);
