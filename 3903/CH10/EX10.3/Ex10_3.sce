// Chapter No : 10  Exercise Number : 10.3 of the Book Name : Cryptography and Network Security by Behrouz Forouzan, Special Indian Edition, 2007
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//This Source file is Written by Snigdha gupta (15BCE1087) Guided by Dr. T. Subbulakshmi, Professor
//School of Computing Science and Engineering, VIT University Chennai 
//The Operating System used for writing the code found in this file is Windows 10
//SCILAB version 5.5.2 
//---inverse knapsack Cryptosystem---
clc;
clear;
printf("\n --------Ex 10.3--------\n\n\n");
s=272;//initial value of inverse knapsack sum
st=[0 0 0 0 0 0];//array to store various inverrse knapsack sums that will be generated
a=[17 25 46 94 201 400]; //given tuple values 
x=[0 0 0 0 0 0];//variable to check where the knapsack routine is true or not
function[]=inv_knapsack(s,a,x,st)
    for i=1:length(a)
        len=7-i;
        st(len)=s;//storing the sum after every iteration
        if(s>=a(len))//checking if the inverse knapsack sum is true(1) or false(0)
            x(len)=1;
            s=s-a(len);//generating value of the next inverse knapsack sum 
        else
            x(len)=0;
        end
    end
    printf("i\tai\ts\ts>=ai\tx\n\n");//printing all the values of inverse knapsack sum along with tules a and x in tabular form
    for i=1:length(a)
        len=7-i;
        if (x(len)==0)
               printf("%d\t%d\t%d\tfalse\t%d",len,a(len),st(len),x(len));//printing all the inverse knapsacks that are false
               printf("\n");
        else
                printf("%d\t%d\t%d\ttrue\t%d",len,a(len),st(len),x(len));//printing all the inverse knapsacks that are true
                printf("\n");
            end
            
    end
    printf("\nThe knapsacks are as follows:");//printing the correct knapsack values.
    for i=1:length(a)
        if(x(i)==1)
            printf("    %d\t",a(i));
        end
    end
endfunction
inv_knapsack(s,a,x,st);//calling the inwerse knapsack function

        
        
    
