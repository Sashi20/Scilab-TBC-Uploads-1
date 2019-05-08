// Chapter No :3  Exercise Number : 3.20 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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


//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 65 of the book will do the following operations                         |
//|1. Hill encrypt|
//PLaintext 
clc;
clear;
//pt="code is ready"
//disp("Plaintext: ")
//disp(pt)


a = ascii("A")
pt_mat = []

//Taking A=0,B=1,C=2,etc.

    pt_mat=[02 14 03 04; 08 18 17 04 ; 00 03 24 25]


disp("Plaintext matrix:")
disp(pt_mat)

//Key matrix 
key_mat = [9 7 11 13; 4 7 5 6;2 21 14 9;3 23 21 08 ]
disp("Encryption Key matrix:")
disp(key_mat)

//ciphertext matrix
ct_mat = [14 07 10 13;08 07 06 11;11 08 18 18]

disp("Product: ")
disp(ct_mat)
[r,c]=size(ct_mat)



disp("Ciphertext matrix: ")
disp(ct_mat)

disp("Ciphertext: ")

//Conversion of code to letters
ct=[]
for i=1:3
    ct(i,1) = ascii(ct_mat(i,1)+a)
end
ct = strcat(ct)
disp(ct)



//////////////////////////////////////////

//Ciphertext 
disp("Ciphertext: ")
disp(ct)

l = length(ct)
ct = strsplit(ct)

a = ascii("A")
ct_mat = []

//Taking A=0,B=1,C=2,etc.
for i=1:l
    ct_mat(i,1)=ascii(ct(i,1))-a
end

disp("Ciphertext matrix:")
disp(ct_mat)

//Key matrix for decryption (inverse of encryption key matrix)
key_mat = [02 15 22 03;15 00 19 03; 09 09 03 11; 17 00 04 07]
disp("Decryption Key matrix:")
disp(key_mat)

//ciphertext matrix
 pt_mat=[02 14 03 04; 08 18 17 04 ; 00 03 24 25]

disp("Product: ")
disp(pt_mat)
[r,c]=size(pt_mat)


disp("Plaintext matrix: ")
disp(pt_mat)

disp("Plaintext: ")

//Conversion of code to letters
pt=[]
for i=1:r
    pt(i,1) = ascii(pt_mat(i,1)+a)
end
pt = strcat(pt)
disp(pt)
