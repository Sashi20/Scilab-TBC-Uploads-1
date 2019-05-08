// Chapter No : 2  Exercise Number : 2.19 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 28 of the book will do the following operations                         |
//|1. Using the property 10^n mod x = (10 mod x)^n to find 10^n mod 3, 10^n mod 9 and 10^n mod 7
//|2. Print the result in the scilab command line 

clc;
clear;
printf("\t(10^n) mod x = (10 mod x)^n\t\n");
n=2;
x=3;
Tmod3=1;
Tmod9=1;
Tmod7=3;
printf("x = %d\n",x);
printf("10 mod %d = %d ->  (10^n) mod %d = (10 mod %d)^n = %d^n\n",x,Tmod3,x,x,Tmod3);
x=9;
printf("x = %d\n",x);
printf("10 mod %d = %d ->  (10^n) mod %d = (10 mod %d)^n = %d^n\n",x,Tmod9,x,x,Tmod9);
x=7;
printf("x = %d\n",x);
printf("10 mod %d = %d ->  (10^n) mod %d = (10 mod %d)^n = %d^n\n",x,Tmod7,x,x,Tmod7);
