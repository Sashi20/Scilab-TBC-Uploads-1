clc
clear

//for repeated roots use of pfss function is not efficient
s=%s
num=4*s^3+16*s^2+23*s+13;// given numerator
den1=(s+2);//given denominators
den2=(s+1)^3;
root1=-1;root2=-2;

g1=num/den1;
g2=num/den2;

k1=horner(g1,root1);                    //finding co-efficient for (s+1)^3
k2=horner(derivat(g1),root1);           //finding co-efficient for (s+1)^2
k3=horner(derivat(derivat(g1)),root1)/2;//finding co-efficient for (s+1)
k4=horner(g2,root2);                    //finding co-efficient for (s+2)

printf("the partial fractions are as below\n");
printf("\t%.0f/(s+1)^3      %.0f/(s+1)^2         %.0f/(s+1)        %.0f/(s+2)",k1,k2,k3,k4);
