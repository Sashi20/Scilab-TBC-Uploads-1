
// Chapter No : 13  Exercise Number : 13.1 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---How Alice obatains Bob's verified public key---
clc;
clear;
printf("\n Bob sends a chain of certificates from Root4 to Bob.");
printf("\n Alice looks at the directory of Root1 to find Root1<<Root1>> and root1<<Root4>> certificates.");
printf("\n Using the process in Fig. 15.21, Alice can verify public key from Bob");
