//Example 21_4
clc;
clear;
close;

//Given data :
// 18degree 24minutes N, 36degree 18minutes E
L1=18+(24/60);// Latitude of A in degree
l1=36+(18/60);// Longitude of A degree
// 68degree 32minutes N, 126degree 34minutes E
L2=68+(32/60);// Latitude of B in degree
l2=126+(34/60);// Longitude of B degree
PA=90-L1;// Latitude PA in degree
PB=90-L2;// Latitude PB in degree
// The longitudes are measured towards the same pole 
// The difference in longitude between two points is the difference in longitude of the two point
APB=l2-l1;// Difference in longitude in degree
AB=acosd((cosd(PA)*cosd(PB))+(sind(PA)*sind(PB)*cosd(APB)));// Angle AB in degree
R=6370;// Radius in km
D=R*AB*3.14/180;// Distance AB in km
disp(D,"Distance AB in km");
// The answer provided in the textbook is wrong
