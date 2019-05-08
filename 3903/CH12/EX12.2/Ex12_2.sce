
// Chapter No : 12  Exercise Number : 12.2 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---pages occupied by message 2^128 bits in SHA-512---
clc;
clear;
printf("This example also concerns the message length in SHA-512. \n\nSuppose that a character is 32, or 2^6 bits. \nEach page is less than 2048, or approximately 2^12, characters. \nSo 2^128/2^18, or 2^110, pages. \nThis again shows that we need not worry about the message length restriction.")
