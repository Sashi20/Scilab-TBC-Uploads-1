// Chapter No : 2  Exercise Number : 2.4 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 18 of the book will do the following operations                         |
//|1. Find the remainder for 32 / 4 and show that 4 | 32 with r=0
//|2. Find the remainder for 42 / 8 and show that 8 + 42 with r=2
//|3. Print the result in the scilab command line 
clc;
clear;
a1=32;
n1=4;
n2=8;
a2=42;
q1=int(a1/n1);
r1=a1-q1*n1;
q2=int(a2/n2);
r2=a2-q2*n2;
printf("%d = ( %d x %d ) + %d\n",a1,q1,n1,r1);
printf("r=%d => , %d | %d\n",r1,n1,a1);
printf("%d = ( %d x %d ) + %d\n",a2,q2,n2,r2);
printf("r=%d => , %d + %d",r2,n2,a2);
