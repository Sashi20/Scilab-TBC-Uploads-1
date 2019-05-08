// Chapter No : 2  Exercise Number : 2.16 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 27 of the book will do the following operations                         |
//|1. Add 7 to 14 in Z(15)
//|2. Subtract 11 from 7 in Z(13)
//|3. Multiply 11 by 7 in Z(20)
//|4. Print the result in the scilab command line 

clc;
clear;
printf("a.\n")
a=7
b=14
c=a+b
n=15
if(n~=0),
    r=c-int(c/n)*n
    q=int(c/n)
    if(c<0),
        q=q-1;
        r=r+n;
    end
end
printf(" (%d + %d) mod %d ->  (%d) mod %d = %d\n",b,a,n,c,n,r);

printf("\n")

printf("b.\n")
a=11
b=7
c=b-a
n=13
if(n~=0),
    r=c-int(c/n)*n
    q=int(c/n)
    if(c<0),
        q=q-1;
        r=r+n;
    end
end
printf(" (%d - %d) mod %d ->  (%d) mod %d = %d\n",b,a,n,c,n,r);

printf("\n")

printf("c.\n")
a=11
b=7
c=a*b
n=20
if(n~=0),
    r=c-int(c/n)*n
    q=int(c/n)
    if(c<0),
        q=q-1;
        r=r+n;
    end
end
printf(" (%d x %d) mod %d ->  (%d) mod %d = %d\n",b,a,n,c,n,r);
