// Chapter No :3  Exercise Number : 3.11 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 55 of the book will do the following operations                         |
//|1. Decrypt affine cipher|

//Generalised Caesar cipher decryption
clc;
clear;
function [pt] = decrypt_caesar_general(ct,key,keytwo)
    a = ascii('A')
    key = 26-key
    keytwo=26-keytwo
    l = length(ct)
    pt = zeros(l)
    
    for i =1:l
        if isletter(part(ct,i:i)) then
           pt(i) = a + modulo( ((ascii(part(ct,i:i))-65)*(key))+(keytwo), 26)   
        else
            pt(i) = ascii(part(ct,i:i));        
        end
    end
    pt = char(pt)
    pt = strcat(pt)
endfunction


a = ascii('A')
ct = "ZEBBW"
printf("Ciphertext:\n\t%s\n",ct)

//Encryption using encrypt_caesar function from dependency file
decrypt_caesar_general(ct,7,2)
printf("Decrypted text:\n\t%s","HELLO")


