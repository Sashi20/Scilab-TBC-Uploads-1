clc
clear

//for repeated roots use of pfss function is not efficient
//so manual calculation needed
s=%s
num=s^3+3*s^2+4*s+6;// given numerator
den1=(s+1);//given denominators
den2=(s+2);
den3=(s+3)^2;
root1=-1;root2=-2;root3=-3;

g1=num/(den2*den3);
g2=num/(den1*den3);
g3=num/(den1*den2);

k1=horner(g1,root1);           //finding co-efficient for (s+1)
k2=horner(g2,root2);           //finding co-efficient for (s+2)
k3=horner(derivat(g3),root3);  //finding co-efficient for (s+3)
k4=horner(g3,root3);           //finding co-efficient for (s+3)^2

printf("the partial fractions are as below\n");
printf("\t%.0f/(s+1)      %.0f/(s+2)         %.0f/(s+3)        %.0f/(s+3)^2",k1,k2,k3,k4);
