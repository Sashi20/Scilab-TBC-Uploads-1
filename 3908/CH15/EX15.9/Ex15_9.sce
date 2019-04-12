//Example 15_9
clc;
clear;
close;

//Given data
R=400;// Radius of the curve in m
teta=42;// Deflection angle in degree
i=20;// Chord interval in m
d=2*asind(i/(2*R));// Degree of curve with 20-m chord in m
hca= teta/2;;// Half the central angle in degree
// This will give 7 chords
a=7*d;// Angle for seven chords in degree
ba=hca-a;// Balance angle in degree
c0=0;// Chord length c0 in m
c1=i*ba/d;// Chord length c1 in m
c2=i;// Chord length c2 in m
c3=i;// Chord length c3 in m
c4=i;// Chord length c4 in m
c5=i;// Chord length c5 in m
Y1=c1*(c0+c1)/(2*R);// Offset Y1 in m
disp(Y1,"Offset Y1 in m");
Y2=c2*(c1+c2)/(2*R);// Offset Y2 in m
disp(Y2,"Offset Y2 in m");
Y3=c3*(c2+c3)/(2*R);// Offset Y3 in m
disp(Y3,"Offset Y3 in m");
Y4=c4*(c3+c4)/(2*R);// Offset Y4 in m
disp(Y4,"Offset Y4 in m");
Y5=c5*(c4+c5)/(2*R);// Offset Y5 in m
disp(Y5,"Offset Y5 in m");
// The answers vary due to round off error
