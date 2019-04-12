//Example 20_1
clc;
clear;
close;

//Given data :
disp("a)- Very deep water table");
B=2;// Width of foundation in m
Df=1;// Depth of foundation in m
gammat=18;// Unit weight of soil in kN/m^2
teta=35;// Angle in degree
Nq=41;// Bearing capacity factor
Ng=42;// Bearing capacity factor
qult=(Df*gammat*Nq)+(0.5*gammat*B*Ng);// Ultimate bearing capacity for footing in sand in kN/m^2
disp(qult,"     Ultimate bearing capacity for footing in sand in kN/m^2");

disp("b)- Very deep water table");
B=2;// Width of foundation in m
Df=2;// Depth of foundation in m
gammat=18;// Unit weight of soil in kN/m^2
teta=35;// Angle in degree
Nq=41;// Bearing capacity factor
Ng=42;// Bearing capacity factor
qult=(Df*gammat*Nq)+(0.5*gammat*B*Ng);// Ultimate bearing capacity for footing in sand in kN/m^2
disp(qult,"     Ultimate bearing capacity for footing in sand in kN/m^2");

disp("c)- Very deep water table");
B=4;// Width of foundation in m
Df=1;// Depth of foundation in m
gammat=18;// Unit weight of soil in kN/m^2
teta=35;// Angle in degree
Nq=41;// Bearing capacity factor
Ng=42;// Bearing capacity factor
qult=(Df*gammat*Nq)+(0.5*gammat*B*Ng);// Ultimate bearing capacity for footing in sand in kN/m^2
disp(qult,"     Ultimate bearing capacity for footing in sand in kN/m^2");

disp("d)- Ground surface water table");
B=2;// Width of foundation in m
Df=1;// Depth of foundation in m
gammat=18;// Unit weight of soil in kN/m^2
teta=35;// Angle in degree
Nq=41;// Bearing capacity factor
Ng=42;// Bearing capacity factor
qult=(Df*gammat*Nq)+(0.5*gammat*B*Ng);// Ultimate bearing capacity for footing in sand in kN/m^2
disp(qult,"     Ultimate bearing capacity for footing in sand in kN/m^2");
// The answer provided in the textbook is wrong

disp("e)- Very deep water table");
B=2;// Width of foundation in m
Df=1;// Depth of foundation in m
gammat=20;// Unit weight of soil in kN/m^2
teta=37.5;// Angle in degree
Nq=61;// Bearing capacity factor
Ng=86;// Bearing capacity factor
qult=(Df*gammat*Nq)+(0.5*gammat*B*Ng);// Ultimate bearing capacity for footing in sand in kN/m^2
disp(qult,"     Ultimate bearing capacity for footing in sand in kN/m^2");
