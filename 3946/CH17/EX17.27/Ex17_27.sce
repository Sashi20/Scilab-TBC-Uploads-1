//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 0;      //(Initial velocity)
n1 = 3;     //(Initial no. of second)
n2 = 5;     //(Final no. of second)

//s3 = u + (a/2)*(2*n1 - 1);
//s5 = u + (a/2)*(2*n2 - 1);

//Ratio of distances covered:
//Ratio = s3/s5;
Ratio = [(1/2)*(2*n1 - 1)]/[(1/2)*(2*n2 - 1)];
printf("The ratio of distances covered by it in the 3 rd and 5 th seconds of its motion = %.2f : %.2f",[(1/2)*(2*n1 - 1)]*2,[(1/2)*(2*n2 - 1)]*2);
