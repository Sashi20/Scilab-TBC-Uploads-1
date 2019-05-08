// Chapter No : 2  Exercise Number : 2.6 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Student Shreya Rajiv Somkuwar(15BCE1225), Student J Robin Raj(15BCE1325) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 
//|-----------------------------------------------------------------------------|
//|This worked out example found in Page No: 18 of the book will do the following operations                         |
//|1. Prove 3 | 45 when given 3 | 15 and 15 | 45
//|2. Prove 3 | 66 when given 3 | 15 and 3 | 9
//|3. Print the result in the scilab command line 
clc;
clear;
a=3;
b=15;
c=45;
printf("Since %d | %d  [ %d = ( %d x %d ) + %d ]",b,a,b,int(b/a),a,b-int(b/a)*a);
printf("\t   and\t")
printf(" %d | %d  [ %d = ( %d x %d ) + %d ]\n",c,b,c,int(c/b),b,c-int(c/b)*b);
printf("Therefore using the property, if a|b and b|c => a|c :\n %d | %d  [ %d = ( %d x %d ) + %d ]\n",c,a,c,int(c/a),a,c-int(c/a)*a);

a=3;
b=15;
c=9;

printf("\n\nSince %d | %d  [ %d = ( %d x %d ) + %d ]",b,a,b,int(b/a),a,b-int(b/a)*a);
printf("\t   and\t")
printf(" %d | %d  [ %d = ( %d x %d ) + %d ]\n",c,a,c,int(c/a),a,c-int(c/a)*a);
printf("Therefore using the property, if a|b and a|c => a|( b x n + c x m) :\n ");
printf("%d | ( %d x %d + %d x %d ) => %d | %d",a,b,2,c,4,a,b*2+c*4);
