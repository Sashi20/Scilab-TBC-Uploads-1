clear;
clc;
c1=.8;
p1=120;
r1=p1/c1;
rr1=r1*(sin(acos(c1)));
c2=.9;
r2=p1/c2;
rr2=r2*(sin(acos(c2)));
rr2=round(rr2);
rr=rr1-rr2;
printf("the kVAr of capacitors = %fkVA",rr);
