// Chapter No :3  Exercise Number : 3.24 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 50 of the book will do the following operations                         |
//|| TRANPOSITION
clc;
clear;
//func to remove spaces from a string
function [mat]=remove_spaces(str)
    mat=[]
    k=1
    for i=1:length(str)
        if ~isletter(part(str,i:i)) then
            continue
        end
        mat(k,1) = part(str,i:i)
        k=k+1
    end
    mat = strcat(mat)
endfunction
function [mat]=message_rectangle(str,col)
    l = length(str)
    row = l/6
    if modulo(l,6)>0 then
        row=row+1
    end
    //remove whitespace and non-alphabets from string
    str = remove_spaces(str)
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


disp("Original plaintext message:")
pt = "meet me at the park"
disp(pt)
disp("")

//function from dependency file
pt = remove_spaces(pt)              

l = length(pt)

col = 4

row = 5

//Conversion of plaintext into a message table
//function from dependency file
pt_mat = message_rectangle(pt,col)

disp("Plaintext message rectangle:")
printf("\n")
for i=1:col
    printf(" %d ",i)
end
disp(pt_mat)
disp("")

//Column read order
col_order = [1 2 3 4]
disp("Column order: ")
disp(col_order)
disp("")
k=1

ct=[]
//Convert to ciphertext
for n = 1:length(col_order)
    j = col_order(n)
    for i=1:row
        pos = (i-1)*col + j
        if pos>l then
            continue
        end

 
    end
end
disp("Ciphertext:")
ct = strcat(pt_mat)
disp(ct)
