// Chapter No : 10  Exercise Number : 10.5 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//--- Proof of RSA---
clc;
clear;
printf("\n --------Ex 10.5--------\n\n\n");
//Bob chooses value of p and q 
p=7;
q=11;
// Value of n is found by multiplying p and q
n=p*q;
//fi(n) calculated by multiplying p-1 and q-1
fi=(p-1)*(q-1);
e=13;//given encryptn key
d=37;//given decryption key
m=1;//value for checking inverse modulo
l=(e*d);//multiplying encryption and decrytion
lm= modulo(l,fi);//modulo of encryption decryption product with fi(n)
pt=5;//given plain text
ct=0;//declaring ciphertext variable
if(lm==m)//checking if encryption decryptin modulo with fi(n) if 1 or not
    printf("\n The plaintext to be sent from Alice to Bob is %d ",pt);
    ct=modulo((pt^e),n);// calculating the cipher text
    printf("\n The cipher text sent is %d",ct);
end
c=26;
if (c==ct) 
    printf("\n The ciphertext recieved by Bob from Alice is %d",ct);
    ptt=modulo((ct^d),n);//calculating the plain text
end
    
