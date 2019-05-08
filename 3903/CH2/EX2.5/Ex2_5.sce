// Chapter No : 2  Exercise Number : 2.5 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|1. Solve and prove for 13 | 78, 7 | 98, -6 | 24, 4 | 44, 11 | (-33)
//|2. Solve and prove for 13 + 27, 7 + 50, -6 + 23, 4 + 41, 11 + (-32)
//|3. Print the result in the scilab command line 
clc;
clear;
a=78
n=13
printf(" %d | %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=98;
n=7;
printf(" %d | %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=24;
n=-6;
printf(" %d | %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=44;
n=4;
printf(" %d | %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=-33
n=11;
printf(" %d | %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=27;
n=13;
printf(" %d + %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=50;
n=7;
printf(" %d + %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
a=23;
n=-6;
printf(" %d + %d , since %d = ( %d x %d ) + %d\n",a,n,a,abs(int(a/n)),n,a-abs(int(a/n))*n);
a=41;
n=4;
printf(" %d + %d , since %d = ( %d x %d ) + %d\n",a,n,a,int(a/n),n,a-int(a/n)*n);
