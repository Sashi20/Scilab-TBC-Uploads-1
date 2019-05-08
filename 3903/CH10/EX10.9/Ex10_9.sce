// Chapter No : 10  Exercise Number : 10.9 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//--- Rabin Cryptosytem---
clc;
clear;
printf("\n-----------Ex10.9-----------");
//Bob selects the value of p and q which are congruent to eah other
p=23;//value of p
q=7;//value of q
//value of n is found by multiplying p and q
n=p*q;
printf("\n The value of n=%d",n);
printf("\n The plain text to be sent by ALice is pt=24");
pt=24;//given plain from Alice
//plaintext and the value of n are relatively prime
printf("\n 24 and 161 are relatively prime");
c=modulo((pt^2),161);//calculating ciphertext
printf("\n Cipertext sent to Bob is %d",c);
//Bob calculates all the possible combinations using p and q
//the combinations through which plain text can be generated using the cipher text
p1=(p+1)/4;//powers are being calclated
p2=(q+1)/4;
a1=modulo((c^p1),23);//values are being generated
a2=-(modulo((c^p1),23));
a2=a2+23;//finding the positive value for the modulo function
b1=modulo((c^p2),7);//values are being generated
b2=-(modulo((c^p2),7));
b2=b2+7;//finding the posiitve value for the modulo function
//all the values are then printed
printf("\n possible answers:\n");
printf("\n(%d,%d)",a1,b1);
printf("\n(%d,%d)",a1,b2);
printf("\n(%d,%d)",a2,b1);
printf("\n(%d,%d)",a2,b2);
printf("\n Note that only these four answers, when squared modulo n,give the cypher text 93 sent by Alice");
