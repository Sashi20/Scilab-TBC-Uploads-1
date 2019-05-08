// Chapter No : 2  Exercise Number : 2.35 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 37 of the book will do the following operations                         |
//|1. Solve the equation 10x = 2(mod 15)
//|2. Print the solution in the scilab command line
clc;
clear;
a=10
b=2
n=15
gcd_an=gcd([a,n])
if(pmodulo(b,double(gcd_an))==0)
    common=double(gcd([a,b,n]))
    ra=a/common
    rb=b/common
    rn=n/common
    for i=1:rn-1
        if(pmodulo(i*ra,rn)==1)
            aIv=i
            break
        end
    end
    x1=pmodulo(rb*aIv,rn)
    disp(x1)
    for k=1:gcd_an-1
        x=x1+k*(n/gcd_an)
        disp(x)
    end
else
    disp("No Soultion")
end

