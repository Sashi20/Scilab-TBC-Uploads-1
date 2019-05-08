// Chapter No : 10  Exercise Number : 10.8 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//--- RSA encryption and decryption---
clc;
clear;
printf("\n\nWe choose 512 bit p and q and calculate n and fi(n), wthen we choose e and test for relative primeness with fi(n). We then calculate d. Finally we show the results of encryption and decryption. The intege p is a 159 digit number.");
//We choose value of p and q 
printf("\n\n p=9613034531358350457419158128061542790930984559499621582258315087964794045505647063849215716018034750312098666606492420191808780667421096063354219926661209");
printf("\n\n q is a 160 digit number:\n q=1206019195723144691827679420445089600155592505463703393606179832173148214848376465921538945320917522527322683010712069560460251388745524969000359660045617");
// Value of n is found by multiplying p and q
printf("\n \nThe value of n=p*q\n = 1159350417396761496889250986465887523771457375454144775485526137614788540832635081727687881596832516846884930062548576400025016241455233918292716250765677072746009708271412773043496050055634727456662806009992403710299142447229221577279853172703383931334692684137327622000966676671831831088373420823444370953");
//fi(n) calculated by multiplying p-1 and q-1
printf("\n \nfi(n)=1159350417396761496761496889250986461588752377147375454144775485526137614788540832635081727687881596832516846884930062548576411125016241455233918292716250765675105423360849216752034482627988117554787657013923444405716989581728196098226361075467211864612171359107358640614008885170265377277264467341066243857664128");
//given encryptn key
printf("\n \ne=35535");
//given decryption key
printf("\n\nd=58008302860037763936093661289677946690620896509621804228661113805938528223587317062869100300217108590443384021707298690876006115306202524959884448047568240966247081485817130463240644077704833708533328853214470885955136670294831");
//given plain text
printf("\n\n Alice wants to send the message THIS IS A TEST which can be changed to a numr=eric value using the 00-26 encoding scheme.");
//plaintext converted in numeric values corresponding to their alphabet position
printf("\n\n Plaintext= 1907081826081826002619041819");
// calculating the cipher text
printf("\n\n The cipher text caculated by Alice is C=P^e which is:");
//cipher text is as follows
printf("\n 47530912364622682720635550610545119741125200568297979457173603610127821884789274156609048002350719071527718591497518846588863210224835410336165789846796838676370076577746562507928052114814184404814430812773059004692874248559166462108656");
// calculating plain text from cipher text
printf("\n\n Bob can recover the plain text from the cipher text using P=C^d which is as follows\n Plaintext= 1907081826081826002619041819");
//converting plaintext to alphabetic message
printf("\n\n Recovered plaintext is THIS IS A TEST after decoding");

