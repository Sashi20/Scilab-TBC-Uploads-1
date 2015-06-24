clear;
clc;
z1=.25*%i;
z2=.35*%i;
z0=.1*%i;
ea=1;
ia1=inv(z1+inv(inv(z2)+inv(z0)))*ea;
va1=ea-(ia1*z1);
va0=va1;
va2=va0;
ia0=-va0/z0;
ia2=-va2/z2;
ia=ia1+ia2+ia0;
va=va1+va2+va0;
va=fix(va*1000)/1e3;
mprintf("the current ia=%dA\tVa=%fV",ia,va);
