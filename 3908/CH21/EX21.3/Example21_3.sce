//Example 21_3
clc;
clear;
close;

//Given data :
// 36degree 24minutes N, 30degree 36minutes W
L1=36+(24/60);// Latitude of A in degree
l1=30+(36/60);// Longitude of A degree
// 12degree 12minutes N, 15degree 20minutes E
L2=12+(12/60);// Latitude of B in degree
l2=15+(20/60);// Longitude of B degree
// The longitudes are measured towards the same pole 
// The difference in longitude between two points is the difference in longitude of the two points
D1=l1+l2;// Difference in longitude in degree
deg=int(D1);// degree
mins=(D1-deg)*60;// minutes
disp("Difference of Longitude");
disp(deg,"Degree");
disp(mins,"Minutes");
D=D1*60*cosd(L1);// Departure in NM
D=D*1.852;// Departure in km
disp(D,"Departure in km");
// The answers vary due to round off error
