
// Chapter No : 15  Exercise Number : 15.1 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//SYMMETRIC KEY AGREEMENT
clc;
clear;

g=7;
p=23;
printf("\n g=%d  \n p=%d",g,p);
x=3; //Alice chooses x=3
printf("\n x=%d",x);
r1=modulo((g^x),p);//step 1
printf("\n r1=%d",r1);
y=6;//Bob chooses y=6
printf("\n y=%d",y);
r2=modulo((g^y),p);//step 2
printf("\n r2=%d",r2);
printf("\n\n Alice sends r1 to Bob.");//step 3
printf("\n Bob sends r2 to Alice");//step 4
xy=x*y;
//Calculation of symmetric key

k1=modulo((r2^x),p); // Alice calculates symmetric key
printf("\n k1=%d",k1);//step 5
k2=modulo((r1^y),p); //Bob clculates symmetric key
printf("\n k2=%d",k2);//step 6
if(k1==k2)
    printf("\n\n Value of K is same for both Alice and Bob");
    gxy=g^xy;
    res=modulo(gxy,p);//final comparing of key on both Alice and Bob side
    printf("\n Value of the key after checking with xy is %d",res);
end 
