// Chapter No : 9  Exercise Number : 9.17 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 235 of the book will do the following operations                         |
//|1. Find the multiplicative inverse of 8 in Z(77), 7 in Z(15), 60 in Z(187) and 71 in Z(100)
//|2. Print the result in the scilab command line 
clc;
clear;
function result=phi(n,e)
    x=factor(n)
    if(n==1)
        result=0      
    elseif(x==n)
        result=(n^e)-(n^(e-1))
    else
       [a,b]=unique(x)
       for i=1:length(a)
           if(i<length(a))
               result(i)=phi(a(i),b(i+1)-b(i))
           else
               result(i)=phi(a(i),length(x)+1-b(i))
           end
       end 
    end
endfunction



//(a) Multiplicative Inverse of 8 modulus 77
a1=8
n1=77

result1=phi(n1,1)
ans1=1
for i=1:length(result1)
    ans1=ans1*result1(i)
end

printf("The answer is (%d^%d) mod %d! To big calculation for final Answer!!",a1,ans1-1,n1)

//(b) Multiplicative Inverse of 7 modulus 15
a2=7
n2=15

result2=phi(n2,1)
ans2=1
for i=1:length(result2)
    ans2=ans2*result2(i)
end

printf("\nThe answer is %d!",pmodulo(a2^(ans2-1),n2))


//(c) Multiplicative Inverse of 60 modulus 187
a3=60
n3=187

result3=phi(n3,1)
ans3=1
for i=1:length(result3)
    ans3=ans3*result3(i)
end

printf("\nThe answer is (%d^%d) mod %d! To big calculation for final Answer!!",a3,ans3-1,n3)


//(d) Multiplicative Inverse of 71 modulus 100
a4=71
n4=100

result4=phi(n4,1)
ans4=1
for i=1:length(result4)
    ans4=ans4*result4(i)
end

printf("\nThe answer is (%d^%d) mod %d! To big calculation for final Answer!!",a4,ans4-1,n4)
