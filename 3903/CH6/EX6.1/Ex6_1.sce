// Chapter No :6  Exercise Number : 6.1 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Pranav Sreenivasarao 16BCE1361  Anamay Prateek (16BCCE1267)) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 

//The Operating System used for writing the code found in this file is Windows 8
//SCILAB version 5.5.2 


clc;
clear;

//"0000000000000010000000000000000000000000000000000000000000000001" as input
//p=input("Enter bin code of 64 characters : ")
p = "0000000000000010000000000000000000000000000000000000000000000001"
for i=1:length(p)
    ah(i)=part(p,i:i)
end
disp(length(p))
q="0000000000000000000000000000000000000000000000000000000000000000"
for i=1:length(q)
    qq(i)=part(q,i:i)
end
disp(length(p))
m=[
58 50 42 34 26 18 10 2;
60 52 44 36 28 20 12 4;
62 54 46 38 30 22 14 6;
64 56 48 40 32 24 16 8;
57 49 41 33 25 17 09 1;
59 51 43 35 27 19 11 3;
61 53 45 37 29 21 13 5;
63 55 47 39 31 23 15 7]

for k=1:64
    for i=1:8
        for j=1:8
            if(k==m(i,j))
                qq((i-1)*8+j)=ah(k)
            end
        end
    end
end

for i=1:length(q)
    disp(string(i)+":"+qq(i))
end
