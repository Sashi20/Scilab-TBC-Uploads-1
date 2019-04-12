//Example 21_1
clc;
clear;
close;

//Given data :
// (a) 28degree 35minutes N, 58degree 36minutes N
L1=28+(35/60);// Latitude 1 in degree
L2=58+(36/60);// Latitude 2 in degree
// The latitudes are measured towards the same pole 
// The difference in laditude between two points is the difference in latitudes of the two points
D1=L2-L1;// Difference in latitude in degree
deg=int(D1);// degree
mins=(D1-deg)*60;// minutes
disp("(a) Difference of Latitude");
disp(deg,"Degree");
disp(mins,"Minutes");

// (b) 18degree 24minutes N, 34degree 45minutes S
L1=18+(24/60);// Latitude 1 in degree
L2=34+(45/60);// Latitude 2 in degree
// The latitudes are measured towards the same pole 
// The difference in laditude between two points is the sum of the latitudes of the two points
D1=L2+L1;// Sum of latitude in degree
deg=int(D1);// degree
mins=(D1-deg)*60;// minutes
disp("(b) Difference of Latitude");
disp(deg,"Degree");
disp(mins,"Minutes");
