// Chapter No : 2  Exercise Number : 2.23 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 29 of the book will do the following operations                         |
//|1. Finding all multiplicative inverse pairs in Z(10)
//|3. Print the result in the scilab command line 
clc;
clear;

n=10
for i = 1:n-1
    b=i
    a=n
    while b~=0
        r=a-int(a/b)*b
        a=b
        b=r
    end
    if(a==1),
        printf("\ngcd(%d, %d)=%d -> Multiplicative inverse of %d exists.\n",n,i,a,i);
        for j=1:n-1
            t=i*j
            m=t-int(t/n)*n
            if m==1
                printf("Multiplicative inverse of %d is %d -> ( %d x %d) mod %d = %d\n",i,j,i,j,n,m);
            end
        end
    end
end

