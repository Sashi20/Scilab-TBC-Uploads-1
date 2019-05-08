// Chapter No :6  Exercise Number : 6.2 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//"0000000000000000000000001000000000000000000000000000000000000010" as input
//p=input("Enter bin code of 64 characters : ")

clc;
clear;
p = "0000000000000000000000001000000000000000000000000000000000000010"
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
40 08 48 16 56 24 64 32;
39 07 47 15 55 23 63 31;
38 06 46 14 54 22 62 30;
37 05 45 13 53 21 61 29;
36 04 44 12 52 20 60 28;
35 03 43 11 51 19 59 27;
34 02 42 10 50 18 58 26;
33 01 41 09 49 17 57 25]

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
