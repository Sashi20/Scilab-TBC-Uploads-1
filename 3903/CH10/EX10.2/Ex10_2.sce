// Chapter No : 10  Exercise Number : 10.2 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---trapdoor one way function---
clc;
clear;
printf("\n --------Ex 10.2--------\n\n\n");
disp("When n is large, the function y=(x^k)mod n is a trapdoor one way function. Given x,k and n,it is easy to calculate y using the fast exponential algorithm. Given y,k and n, it is very difficult to calculate x. This is the discrete logarithm problem. There is no polynomial time solution to the inverse function in this case. However, if we know thr trapdoor, k'' such that kxk''=1 mod(fi(n)), we can use x=y^k mod n to find x. This techniques is the famous RSA algrithm.");
