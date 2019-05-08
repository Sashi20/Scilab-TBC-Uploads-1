// Chapter No : 2  Exercise Number : 2.14 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 24 of the book will do the following operations                         |
//|1. 27 mod 5
//|2. 36 mod 12
//|3. -18 mod 14
//|4. -7 mod 10
//|5. Print the result in the scilab command line 
clc;
clear;
a=27
n=5
if(n~=0),
    r=a-int(a/n)*n
    q=int(a/n)
    if(a<0),
        q=q-1;
        r=r+n;
    end
end
printf(" %d mod %d = %d\n",a,n,r);

a=36
n=12
if(n~=0),
    r=a-int(a/n)*n
    q=int(a/n)
    if(a<0),
        q=q-1;
        r=r+n;
    end
end
printf(" %d mod %d = %d\n",a,n,r);

a=-18
n=14
if(n~=0),
    r=a-int(a/n)*n
    q=int(a/n)
    if(a<0),
        q=q-1;
        r=r+n;
    end
end
printf(" %d mod %d = %d\n",a,n,r);

a=-7
n=10
if(n~=0),
    r=a-int(a/n)*n
    q=int(a/n)
    if(a<0),
        q=q-1;
        r=r+n;
    end
end
printf(" %d mod %d = %d",a,n,r);
