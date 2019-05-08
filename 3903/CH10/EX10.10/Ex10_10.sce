// Chapter No : 10  Exercise Number : 10.10 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Elgamal Algorithm to develop ciphertext and plaintext---
clc;
clear;
printf("\n-----------Ex10.10-----------");
//Bob chooses the value of a large prime number p and e1- encryption key 1
p=11;
e1=2;//2 is a premitive root of Z-11
//Bob chooses the value of decryption key
d=3;
//encryption key e2 is calculated using e1 and d
e2=e1^d;
printf("\n public key are %d %d %d",e1,e2,p);
printf("\n private key is %d",d);
//public keys p,e1,e2 sent to aLice
//decryption key kept private
r=4;//Alice chooses the value of r
pt=7;//given plain text
mp=e2^r;//value for e2 with power r is calculated
c1=modulo((e1^r),p);//cipher text c1 is calculated
c2=modulo((pt*mp),p);//cipher text c2 is calculated
//Bob recieves the ciphertexts c1 and c2 and calculates the plain text
printf("\n The converted cipher text is %d %d",c1,c2);
cc=c1^(d-1);//calculation on cipher text c1 is done 
ccd=modulo(cc,p);//plaintext is calculated frm the given cipher text
npt=modulo((c2*ccd),p);
printf("\n Recieved plain text by Bob is %d",npt);
