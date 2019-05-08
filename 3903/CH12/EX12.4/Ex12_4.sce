
// Chapter No : 12  Exercise Number : 12.4 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Need of padding if original message length multiple of 1024 bits---
clc;
clear;
printf("\n We need padding if the length of the original message is already a multiple of 1024 bits.\n \nThis is because we need to add the length field.\n So padding is needed to make the new block a multiple of 1024 bits.")
