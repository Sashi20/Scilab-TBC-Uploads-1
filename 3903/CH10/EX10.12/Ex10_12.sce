// Chapter No : 10  Exercise Number : 10.12 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Elgamal Algorithm to develop ciphertext and plaintext---
clc;
clear;
printf("\n-----------Ex10.12-----------");
//Bob chooses the value of a large prime number p and encryption key e1
printf("\n public keys announced by Bob are as follows:\n");
printf("p=11534899272561676244925313717014331740490094532609834959814346921905689869862264593212975473787189514436889176562473093615929993728061165964247353440008577");
e1=2;
printf("\ne1=%d",e1);
//e2=9788641304300918950876685693809773904388006288733768761002206223325545070741561892123183177046101416733601508841329408572485377031582066010072558707455
////Bob chooses the value of decryption key
d=1007;
//printf("\n public key are \n%d \n%d \n%d",e1,e2,p);
printf("\n\nprivate key is d=%d",d);
//value of encryption key e2 is calculated using encryption key e1 and decryption key d
printf("\ne2=9788641304300918950876685693809773904388006288733768761002206223325545070741561892123183177046101416733601508841329408572485377031582066010072558707455");
//public keys p,e1,e2 sent to aLice
//Alice chooses the value of r and the plain text
printf("\n\nAlice chooses the following \nr=545131\nplaintext=3200");
//plain text is converted into cipher text using elgamal crptosystems with Fermats Theorem
 printf("\nThe converted cipher text is \nc1=887297069383528471022570471492275663120260067256562125018188351429417223599712681114105363661705173051581533129165400973736355080295736788569060619152881\nc2=7084543330489299445770160123807949995674360218361924469617745069212446961551658007794555930803458896144024085995259195792097216288796813505827795664302950");
//plain text is calculated back from the generated cipher text
printf("\n\nCalculated plain text by Bob is %d",3200);
 
