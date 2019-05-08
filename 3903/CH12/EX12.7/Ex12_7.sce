// Chapter No : 12  Exercise Number : 12.7 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---conditional function---
clc;
clear;
printf("\n Digits in hexadecimal are 0x7,0xA,0xE");
printf("\n The digits in binary are 1001,1010,1111\n\n");
m=[0 1 1 1];
n=[1 0 1 0];
p=[1 1 1 0];
for i=1:length(m) 
a=bitand(m(i),n(i));
b=bitand(p(i),n(i));
c=bitand(m(i),p(i));
ab=bitxor(a,b);
abc=bitxor(ab,c);
printf("\n The result for the bits on bit position %d is %d",i,abc);
end
