clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.18
//calculation of the order of the dark ring which will have double the diameter of that of the 20th dark ring
D_nsq=1; //assuming the square of the diameter of nth ring to be 1 for simplicity of calculation
D_20sq=(D_nsq)/4; //given that nth dark ring which will have double the diameter of that of the 20th dark ring (D_20sq is square of the diameter of 20th ring and D_nsq is square of the diameter of nth ring)
n_20=20; //order of the 20th ring
//from the formula D_n=sqrt(4*n*lambda*R), D_nsq is directly proportional to n
n=n_20*(D_nsq)/(D_20sq); //order of the dark ring which will have double the diameter of that of the 20th dark ring 
printf("\norder of the dark ring which will have double the diameter of that of the 20th dark ring is %d",n)
