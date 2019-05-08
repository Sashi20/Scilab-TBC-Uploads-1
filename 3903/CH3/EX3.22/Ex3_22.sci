// Chapter No :3  Exercise Number : 3.22 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 69 of the book will do the following operations                         |
//|| Railfence 
clc;
clear;
disp("Original plaintext message:")
pt = "meetmeatthepark"
disp(pt)
function [mat]=message_rectangle(str,col)
    l = length(str)
    row = l/6
    if modulo(l,6)>0 then
        row=row+1
    end
    //remove whitespace and non-alphabets from string
    //Conversion of plaintext into a message table
    mat = []
    k=1
    for i=1:row
        for j=1:col
            if k>l then
                break
            end
            mat(i,j) = part(str,k:k)
            k=k+1
        end
    end
endfunction

//function from dependency file


ct = []
k=1

//Writing diagonally
for i=1:length(pt)
    if modulo(i,2)==0 then
        continue
    end
    ct(k,1) = part(pt,i:i)
    ct(k,2) = part(pt,i+1:i+1)
    k = k+1
end

ct = strcat(ct)
disp("")
disp("Ciphertext:")
disp(ct)
