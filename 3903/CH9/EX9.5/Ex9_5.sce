// Chapter No : 9  Exercise Number : 9.5 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 231 of the book will do the following operations                         |
//|1. Check whether 97 is a prime or not
//|2. Print the result in the scilab command line 
clc;
clear;
n=97
error=0
for i=2:sqrt(n)
    if(pmodulo(n,i)==0)
        error=1
        break
    end
end

if(error==0)
    disp("Yes Prime!")
else
    disp("No not a Prime!")
end
