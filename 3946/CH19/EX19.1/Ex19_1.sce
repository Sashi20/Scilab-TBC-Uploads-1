//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 48;      //(km.p.h)(Velocity of train)
theta = 60;  //(degrees)(Angle at C)

//In triangle OBC:
//tand(60) = v/OC;         //(OC = Actual velocity of the train)
OC = (v/tand(theta));    //(km.p.h.)
printf("Actual velocity of the train = %.2f km.p.h.",OC);
