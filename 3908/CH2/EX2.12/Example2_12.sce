//Example 2_12
clc;
clear;
close;

//Given data :
// (a) AB:slope of 5.65 degree
ml=500.65;// Measured length in m
a=5.65;// Slope in degree
hd1=ml*cosd(a);// Horizontal distance AB in m
disp(hd1,"(a)Horizontal distance AB in m");

// (b) BC:gradient of 1:18
ml=700.35;// Measured length in m
hyp=((1^2)+(18^2))^0.5;// Hypotenuse length in m
hd2=ml*18/hyp;// Horizontal distance BC in m
disp(hd2,"(b)Horizontal distance BC in m");

// (c) falling slope of 2.56 m in 20 m
ml=400;// Measured length in m
a=asind(2.56/20);// Slope in degree
disp(a)
hd3=400*cosd(a);// Horizontal distance CD in m
disp(hd3,"(c)Horizontal distance CD in m");
Thd=hd1+hd2+hd3;// Total horizontal distance in m
disp(Thd,"Total horizontal distance in m");
