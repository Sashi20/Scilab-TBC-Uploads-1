// Chapter No : 9  Exercise Number : 9.12 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 233 of the book will do the following operations                         |
//|1. Find the result of 6^10 mod 11
//|2. Print the result in the scilab command line 
clc;
clear;
a=6
b=10
n=11
//a^b mod n
if b==n then
    p=b
    x=factor(p)
    if size(x,"*")==1 then
        disp(a)
    end
elseif b==n-1 then
    p=b+1
    y=factor(p)
    if size(y,"*")==1 & pmodulo(a,p)~=0 then
        disp(1)
    end
end


    
