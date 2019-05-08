// Chapter No : 12  Exercise Number : 12.5 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Minimum and maximum number of padding bits---
clc;
clear;
printf("\n a. This minimum length of padding is 0 and it happens when (-M-128) mod 1024 is 0.\n This means that |M| = -128 mod 1024 = 896 mod 1024 bits.\n We add a 128 bit length field to make the block complete.");
printf("\n\n b. The maximum length of padding is 1023 and it happens when (-M-128)= 1023 mod 1024. \nThis means that the length of the original message is |M|= (-128-1023) mod 1024 or the length is |M| =897 mod 1024.\n In this case , we cannot just add the length field because the length of the last block exceeds one bit more than 1024. \n So we need to add 897 bits o complete this block and create a second block of 896 bits. \n Now the length can be added to make this block complete.")
