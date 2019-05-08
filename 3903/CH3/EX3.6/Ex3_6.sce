// Chapter No :3  Exercise Number : 3.6 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Anjali Dinesh(16BCE1135) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//This code has been referenced and derived from Scilab Textbook Companion for Cryptography and Network Security by A. Kahate Created by Akash Goel B.Tech. Comput
//er Engineering Delhi Technological University and Cross-Checked by Spandana on May 27, 2016. Funded by a grant from the National Mission on Education through IC
//T, Govt of India. 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 53 of the book will do the following operations                         |
//|1. Perform statstical attack|

clc;
clear;

//Generalised Caesar cipher encryption
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
            pt(i) = a +modulo( ascii(part(ct,i:i))+key-a, 26 )  
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
printf("Q 3_6\n")

a = ascii('A')
ct = "XLI LSYWI MW RSA JSV WEPI JSV JSYV QMPPMSR HSPPEVW MX MW ASVXL QSVI LYVVC FIJSVI XLI WIPPIV VIGIMZIW QSVI SJJIVW"
printf("Encrypted text:\n\t%s\n",ct)
printf("Cracked Plaintext:\n\t%s\n",decrypt_caesar_general(ct,4))
