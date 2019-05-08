// Chapter No :3  Exercise Number : 3.18 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Anjali Dinesh(16BCE1135) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 59 of the book will do the following operations                         |
//|1. Get key domain|
clc;
clear;
printf(" \t")
for i=1:26
    a=i
    printf("%c ",ascii(a+i-1))
end
printf("\n\n")
//end of header
key=1
for k=1:26
    //a=k
    printf("%c\t",ascii(a+k-1))
    for j=0:25
        printf("%c ",ascii( a + modulo( k+j+key, 26 ) ) )
    end
    printf("\n")
end
