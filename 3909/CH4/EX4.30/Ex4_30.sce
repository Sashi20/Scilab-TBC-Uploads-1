clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.30
//to compare the maximum angle of acceptance and light gathering power of two fibres
//given data
n1=1.6; //core indice
n2=1.5; //cladding indice
n1_dash=2.1; //core indice
n2_dash=1.5; //cladding indice
//calculation
NA=sqrt(n1^2-n2^2); //light gathering power
i_m=asind(NA); //maximum angle of acceptance
NA_dash=sqrt(n1_dash^2-n2_dash^2); //light gathering power
printf("\n(a)light gathering power is %1.3f",NA)
printf("\n(a)maximum angle of acceptance is %2.2f degree",i_m)
printf("\n(b)light gathering power is %1.2f",NA_dash)
//(b)there is no limit to maximum angle of acceptance as its sin inverse does not exist

