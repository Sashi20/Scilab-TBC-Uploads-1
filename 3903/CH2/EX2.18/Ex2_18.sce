// Chapter No : 2  Exercise Number : 2.18 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|1. Demonstration of the properties:
/////| i) (a+b)mod n = [(a mod n)+(b mod n)] mod n
/////| ii) (a-b)mod n = [(a mod n)-(b mod n)] mod n
/////| iii) (axb)mod n = [(a mod n)x(b mod n)] mod n
//|2. Print the result in the scilab command line 
clc;
clear;

a=1723345;
b=2124945;
n=11;
amodn=a-int(a/n)*n;
bmodn=b-int(b/n)*n;
aplusbmodn=(amodn+bmodn)-int((amodn+bmodn)/n)*n;
printf("1.\n");
printf("(%d + %d) mod %d = (%d + %d) mod %d = %d",a,b,n,amodn,bmodn,n,aplusbmodn);

printf("\n");

a=1723345;
b=2124945;
n=11;
amodn=a-int(a/n)*n;
bmodn=b-int(b/n)*n;
asubbmodn=(amodn-bmodn);
if asubbmodn<0 then,
    asubbmodn=asubbmodn-int(asubbmodn/n)*n+n;
end
printf("2.\n");
printf("(%d - %d) mod %d = (%d - %d) mod %d = %d",a,b,n,amodn,bmodn,n,asubbmodn);

printf("\n");

a=1723345;
b=2124945;
n=11;
amodn=a-int(a/n)*n;
bmodn=b-int(b/n)*n;
aprodbmodn=(amodn*bmodn);
if aprodbmodn<0 then,
    aprodbmodn=aprodbmodn-int(aprodbmodn/n)*n+n;
else
    aprodbmodn=aprodbmodn-int(aprodbmodn/n)*n;
end
printf("3.\n");
printf("(%d x %d) mod %d = (%d x %d) mod %d = %d",a,b,n,amodn,bmodn,n,aprodbmodn);
