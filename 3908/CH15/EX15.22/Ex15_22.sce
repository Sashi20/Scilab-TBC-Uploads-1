//Example 15_22
clc;
clear;
close;

//Given data
teta=105;// Deflection angle of compound arc in degree
teta1=58;// Deflection angle of first arc in degree
teta2=teta-teta1;// Deflection angle of second arc in degree
R1=380;// Radius of first arc in m
R2=520;// Radius of second arc in m
EC=R1*tand(teta1/2);// Length of EC in m
ET1=EC;// Length of ET1 in m
CF=R2*tand(teta2/2);// Length of CF in m
FT2=CF;// Length of FT2 in m
EF=EC+CF;// Length of EF in m
// Applying sine rule to triangle EFI
EI=EF*sind(teta2)/sind(75);// Length of EI in m
FI=EF*sind(teta1)/sind(75);// Length of FI in m
T1I=ET1+EI;// Length of T1I in m
T2I=FT2+FI;// Length of T2I in m
T1=848.55;// Chainage of T1 in m
I=T1+T1I;// Chainage of I in m
disp(I,"Chainage of I in m");
L1=R1*teta1*3.14/180;// Length of first arc in m
L2=R2*teta2*3.14/180;// Length of second arc in m
C=T1+L1;// Chainage of C in m
disp(C,"Chainage of C in m");
T2=C+L2;// Chainage of T2 in m
disp(T2,"Chainage of T2 in m");
// The answers vary due to round off error
