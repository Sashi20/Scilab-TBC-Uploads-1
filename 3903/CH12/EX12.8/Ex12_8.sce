// Chapter No : 12  Exercise Number : 12.8 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//--- Conditional Function---
clc;
clear;
printf("\n The digits in hexadecimal are 0x9, 0xA, 0xF");
printf("\n The digits in binary are 1001,1010,1111\n\n");
m=[1 0 0 1];
n=[1 0 1 0];
p=[1 1 1 1];
for i=1:length(m) 
a=bitand(m(i),n(i));
if(n(i)==1)
    b=0;
else
    b=1;
end
c=bitand(b,p(i));
ab=bitxor(a,c);//similar procedure is done for all the bits.
printf("\n The result for the bits on bit position %d is %d",i,ab);
end
