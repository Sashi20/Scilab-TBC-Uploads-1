
// Chapter No : 12  Exercise Number : 12.3 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Padding bit generation in SHA-512 for a given message---
clc;
clear;
printf("\n Given Message = 2590");
m=2590;//given message bits
a=-2590-128;//the message subtracted by 128 (SHA bits)
p1=modulo(a,1024);//calculating padding bits
p=p1+1024;//finding the positive value
printf("\n Padding = %d ",p);//padding value
p=p-1;//finding number of 0's in padding
printf("\n Padding has one 1 and %d number of 0",p);
