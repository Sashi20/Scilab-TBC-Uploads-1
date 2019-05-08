// Chapter No : 9  Exercise Number : 9.14 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 234 of the book will do the following operations                         |
//|1. Find the multiplicative inverse of 8 in Z(17), 5 in Z(23), 60 in Z(101) and 22 in Z(211) without using extended euclid's algorithm
//|2. Print the result in the scilab command line 
clc;
clear;
function result = fermatMI(a,n)
    x=factor(n)
    if size(x,"*") == 1 then
        t=n-2
        result=pmodulo(a^t,n)
    else
        disp("Multiplicative inverse can not be found for non prime modulus!!")
    end
endfunction

//(a) Multiplicative Inverse of 8 modulus 17
a=8
n=17
disp(fermatMI(a,n))

//(b) Multiplicative Inverse of 5 modulus 23
a=5
n=23
disp(fermatMI(a,n))

//(c) Multiplicative Inverse of 60 modulus 101
a=60
n=101
disp("To Big Calculation!")

//(d) Multiplicative Inverse of 22 modulus 211
a=22
n=211
disp("To Big Calculation!")

