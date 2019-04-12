//Example 15_28
clc;
clear;
close;

//Given data
teta1=180-138.5;// Deflection angle of first curve in degree
teta2=180-130.75;// Deflection angle of first curve in degree
EF=380;// Length of tangent of both curves in m
R=EF/(tand(teta1/2)+tand(teta2/2));// Radius of arc in m
disp(R,"Radius of arc in m");
l1=R*teta1*3.14/180;// length of first arc in m
l2=R*teta2*3.14/180;// length of second arc in m
T1=980;// Chainage of T1 in m
C=T1+l1;// Chainage of C in m
disp(C,"Chainage of C in m");
T2=C+l2;// Chainage of T2 in m
disp(T2,"Chainage of T2 in m");
// The answers vary due to round off error
