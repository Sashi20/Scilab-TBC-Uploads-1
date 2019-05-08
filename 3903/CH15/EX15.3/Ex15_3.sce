
// Chapter No : 15  Exercise Number : 15.3 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---how user 1 obtains verified copy of User3 public key---
clc;
clear;
printf("\n This example shows how User1 knowing only the public key \n of the CA(the root), can obtain a verified copy of User3 public key\n")
printf("\n User one sends a chain of certificate, CA<<CA1>> and CA!<<User3>>, to User 1.");
printf("\n a. User1 validates CA<<CA1>> using the public key of CA. ");
printf("\n b. User1 extracts the public key of CA1 from CA<<CA1>>.");
printf("\n c. User1 validates CA1<<User3>> using the public jey of CA1.");
printf("\n d. User1 extracs the public key of User3 from CA1<<User3>>");
