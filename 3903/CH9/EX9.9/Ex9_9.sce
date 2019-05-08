// Chapter No : 9  Exercise Number : 9.9 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//|This worked out example found in Page No: 232 of the book will do the following operations                         |
//|1. Find the Euler's phi-function for 240
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

n=240
result=phi(n,1)

ans=1
for i=1:length(result)
    ans=ans*result(i)
end

disp(ans)
