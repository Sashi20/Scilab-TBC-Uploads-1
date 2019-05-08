// Chapter No :3  Exercise Number : 3.27 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Anjali Dinesh(16BCE1135) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 72 of the book will do the following operations                         |
//| Check cipher text matrix accuracy|
clc;
clear;
enkey=[]
ciphtxt=[]
cphtxt=[]
pltxt=[]
enkey=[0 1 0 0 0 ;0 0 0 0 1; 1 0 0 0 0; 0 0 1 0 0 ; 0 0 0 1 0]
ciphtxt=[04 04 12 24 13; 19 00 00 02 19;19 10 14 13 18; 07 08 19 25 06]
pltxt=[04 13 04 1 24;00 19 19 00 02;10 1 19 14 13; 08 06 07 19 25]
 

disp("Cipher text")
disp(ciphtxt)
