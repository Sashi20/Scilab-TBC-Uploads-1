// Chapter No : 2  Exercise Number : 2.1 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 16 of the book will do the following Binary operations                         |
//|1. Addition
//|2. Substraction
//|3. Multiplication
clear;
clc;
a=5;
b=9;
printf("---------Binary Operations-------\n");
printf("\nADD\n")
printf("%d + %d = %d\n",a,b,a + b);
printf("(-%d) + %d = %d\n",a,b,(-a) + b );
printf("%d + (-%d) = %d\n",a,b,a + (-b));
printf("(-%d) + (-%d) = %d\n",a,b,(-a) + (-b));
printf("\nSUBTRACT\n")
printf("%d - %d = %d\n",a,b,a - b);
printf("(-%d) - %d = %d\n",a,b,(-a) - b );
printf("%d - (-%d) = %d\n",a,b,a - (-b));
printf("(-%d) - (-%d) = %d\n",a,b,(-a) - (-b));
printf("\nMULTIPLY\n")
printf("%d x %d = %d\n",a,b,a * b);
printf("(-%d) x %d = %d\n",a,b,(-a) * b );
printf("%d x (-%d) = %d\n",a,b,a * (-b));
printf("(-%d) x (-%d) = %d\n",a,b,(-a) * (-b));
