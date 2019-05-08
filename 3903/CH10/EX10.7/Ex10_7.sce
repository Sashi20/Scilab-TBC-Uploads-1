// Chapter No : 10  Exercise Number : 10.7 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Proof of RSA---
clc;
clear;
//Bob chooses value of p and q 
p=397;
q=401;
// Value of n is found by multiplying p and q
n=p*q;
//fi(n) calculated by multiplying p-1 and q-1
fi=(p-1)*(q-1);
e=343;//given encryptn key
d=12007;//given decryption key
m=1;
s=0;//rndom valu to 
l=(e*d);
lm= modulo(l,fi);//modulo of encryption decryption product with fi(n)
printf("\n Let the input string by Jennifer is NO");
printf("\n We convert NO into (00-25) ie NO=1314.");
pt=1314;//given plain text
t=1;
//procedure to calculate cipher text
for i=1:49
    s=(1314^4);
    t=t*(modulo(s,n));
end
//tu=modulo(t,n);
u=1;
for i=1:49
    s=(1314^3);
    u=u*(modulo(s,n));
end
ut=modulo(u,n);
ct=0;
if(lm==m)//checking if encryption decryptin modulo with fi(n) if 1 or not
    printf("\n The plaintext to be sent from Alice to Bob is %d ",pt);
    ct=u*t;// calculating the cipher text
    printf("\n The cipher text sent is %d",ct);
end

    
