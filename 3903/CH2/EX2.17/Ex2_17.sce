// Chapter No : 2  Exercise Number : 2.17 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|1. Add 17 to 27 in Z(14)
//|2. Subtract 34 from 12 in Z(13)
//|3. Multiply 123 by -10 in Z(19)
//|4. Print the result in the scilab command line 
clc;
clear;

printf("a.\n")
a=27
b=17
c=a+b
n=14
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
a=43
b=12
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
a=-10
b=123
c=a*b
n=19
if(n~=0),
    r=c-int(c/n)*n
    q=int(c/n)
    if(c<0),
        q=q-1;
        r=r+n;
    end
end
printf(" (%d x %d) mod %d ->  (%d) mod %d = %d\n",b,a,n,c,n,r);
