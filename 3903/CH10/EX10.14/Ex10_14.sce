// Chapter No : 10  Exercise Number : 10.14 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---Finding points on curve using the given elliptic curve equation---
clc;
clear;
//values of x and coefficients for the given elliptic curve equation
x=0;
a=1;//coefficient of x^3
b=1;//coefficient of x
p=13;//given modulo for calculation
//declaring variables to be used
x3=0;
ax=0;
w=0;
y=0;
y2=0;
ww=0;
printf("\n points on the given elliptic curve are as follows: ")
while x<(p-1) // finding the points on elliptc curve
    x3=x*x*x;//value of x^3
    ax=a*x;//
    ww=x3+ax+b;//function of given ellipic curve
    w=modulo((ww),p);//modulo of elliptic function wrt to given modulo 
    if w==1|w==4|w==9|w==3|w==12|w==10|w==0 //cases with the values that fall within the modulo set
        y=sqrt(w);
        y2=modulo(p-y,p);//calculating and finding the points
        printf("\n(%d,%d)",x,y);//printing the points
        printf("\t(%d,%d)",x,y2);
    end
    x=x+1;
end;
//notes related to elliptic curve
printf("\n Note the following: ");
printf("\n a. Some values of y^2 donot have a square root in modulo 13 arithmatic. These are not points on this elliptic curve.");
printf("\n b. Each points defined for the curve has an inverse. The inverses are listed as pairs. Not that (7,0) is the inverse of itself.");
printf("\n c. Note that for a pair of inverse points, the y value are additive inverses of each other in Zp");
printf("\n d. The inverse are on the same vertical lines.")

    
