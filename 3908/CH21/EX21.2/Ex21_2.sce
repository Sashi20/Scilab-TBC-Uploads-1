//Example 21_2
clc;
clear;
close;

//Given data :
// (a) 38degree 25minutes W, 28degree 12minutes W
L1=38+(25/60);// Longitude 1 in degree
L2=28+(12/60);// Longitude 2 in degree
// The longitudes are measured towards the same pole 
// The difference in longitude between two points is the difference in longitude of the two points
D1=L1-L2;// Difference in longitude in degree
deg=int(D1);// degree
mins=(D1-deg)*60;// minutes
disp("(a) Difference of Longitude");
disp(deg,"Degree");
disp(mins,"Minutes");

// (b) 19degree 24minutes E, 23degree 48minutes W
L1=19+(24/60);// Longitude 1 in degree
L2=23+(48/60);// Longitude 2 in degree
// The longitudes are measured towards the same pole 
// The difference in longitude between two points is the sum of the longitude of the two points
D1=L1+L2;// Sum of longitude in degree
deg=int(D1);// degree
mins=(D1-deg)*60;// minutes
disp("(b) Difference of Longitude");
disp(deg,"Degree");
disp(mins,"Minutes");
