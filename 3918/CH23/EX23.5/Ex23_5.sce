//Example 23_5
clc;
clear;
close;

//Given data :
Ca=250;// Safe capacity of pile A in kN
Cb=400;// Safe capacity of pile B in kN
Lc=1200;// Corner column load in kN
Li=4000;// Interior column load in kN

disp("If pile A is chosen");
Nc=Lc/Ca;// Number of piles required for corner columns
disp(round(Nc),"   Number of piles required for corner columns");
Ni=Li/Ca;// Number of piles required for corner columns
disp(Ni,"   Number of piles required for interior columns");

disp("If pile B is chosen");
Nc=Lc/Cb;// Number of piles required for corner columns
disp(Nc,"   Number of piles required for corner columns");
Ni=Li/Cb;// Number of piles required for corner columns
disp(Ni,"   Number of piles required for interior columns");
