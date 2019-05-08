// Chapter No :6  Exercise Number : 6.3 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
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
//"100011" as input
p=input("Enter bin code of 6 characters : ")
for i=1:length(p)
    ah(i)=part(p,i:i)
end
disp(length(p))
q="0000"
for i=1:length(q)
    qq(i)=part(q,i:i)
end

row=(ascii(ah(1))-48)*2+(ascii(ah(6))-48)*1+1
col=(ascii(ah(2))-48)*8+(ascii(ah(3))-48)*4+(ascii(ah(4))-48)*2+(ascii(ah(5))-48)*1+1
m=[
14 04 13 01 02 15 11 08 03 10 06 12 05 09 00 07;
00 15 07 04 14 02 13 10 03 06 12 11 09 05 03 08;
04 01 14 08 13 06 02 11 15 12 09 07 03 10 05 00;
15 12 08 02 04 09 01 07 05 11 03 14 10 00 06 13]
num=m(row,col)
disp(num)
