// Chapter No : 2  Exercise Number : 2.12 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 23 of the book will do the following operations                         |
//|1. Find the paticular and general solution to the equation 21x + 14y = 35
//|2. Print the result in the scilab command line 
clc;
clear;
a=[21 14 35]

common=gcd(a)
a=a/common

disp("x=k")
printf("y=(%d-%dx)/%d",a(3),a(1),a(2))
