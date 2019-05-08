// Chapter No : 2  Exercise Number : 2.9 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 22 of the book will do the following operations                         |
//|1. Perform extended euclidean algorithm for a=161 and b=28
//|2. Find the gcd, s and t from the above algorithm
//|3. Print the result in the scilab command line 

clc;
clear;
printf("  q    r1    r2    r   s1   s2   s   t1   t2   t \n")
a=161;
b=28;
q=int(a/b);
r=a-b*q;
s1=1;
s2=0;
s=s1-q*s2;
t1=0;
t2=1;
t=t1-q*t2;
printf("  %d   %d    %d    %d   %d   %d   %d    %d    %d   %d \n",q,a,b,r,s1,s2,s,t1,t2,t);
while r~=0,
    a=b;
    b=r;
    q=int(a/b);
    r=a-b*q;
    s1=s2;
    s2=s;
    s=s1-q*s2;
    t1=t2;
    t2=t;
    t=t1-q*t2;
    printf("  %d    %d    %d    %d    %d   %d   %d   %d   %d   %d\n",q,a,b,r,s1,s2,s,t1,t2,t);
end
printf("       %d    %d         %d   %d        %d   %d    \n",b,r,s2,s,t2,t);
printf("\nTherefore:\ngcd(%d, %d)=%d\ns=%d, t=%d  =>  %d x %d  + %d x %d = %d",25,60,b,s2,t2,s2,161,t2,28,s2*161+t2*28);
