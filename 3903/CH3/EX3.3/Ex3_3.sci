
// Chapter No :3  Exercise Number : 3.3 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 51 of the book will do the following operations                         |
//|Encrypt and decrypt caesar cipher|
//Generalised Caesar cipher encryption
clc;
clear;
function [ct] = encrypt_caesar_general(pt,key)
    a = ascii('A')
    l = length(pt)
    ct = zeros(l)
    
    for i =1:l
        if isletter(part(pt,i:i)) then
            ct(i) = a + modulo( ascii(part(pt,i:i))+key-a, 26 ) 
        else
            ct(i) = ascii( part(pt,i:i) )
        end
    end
    ct = char(ct)
    ct = strcat(ct)
endfunction

//Caesar cipher encryption (key = 3  always)
function [ct] = encrypt_caesar(pt)
    ct = encrypt_caesar_general(pt,3)
endfunction


//Generalised Caesar cipher decryption
function [pt] = decrypt_caesar_general(ct,key)
    a = ascii('A')
    key = 26-key
    l = length(ct)
    pt = zeros(l)
    
    for i =1:l
        if isletter(part(ct,i:i)) then
            pt(i) = a + modulo( ascii(part(ct,i:i))+key-a, 26 )  
        else
            pt(i) = ascii(part(ct,i:i));        
        end
    end
    pt = char(pt)
    pt = strcat(pt)
endfunction


//Caesar cipher decryption (key = 3  always)
function [pt] = decrypt_caesar(ct)
    pt = decrypt_caesar_general(ct,3)
endfunction

printf("q 3.3 \n\n")

a = ascii('A')
pt = "HELLO"
printf("Plaintext:\n\t%s\n",pt)

//Encryption using encrypt_caesar function from dependency file
printf("Encrypted text:\n\t%s",encrypt_caesar_general(pt,15))

// A scheme for codifying messages 
//(replacing each alphabet with an alphabet three places down the line)
