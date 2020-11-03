//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 5;             //(m)(Length of the ladder)
alpha = 70;            //(degrees)(Angle which the ladder makes with the horizontal)
w1 = 900;          //(N)(Weight of the ladder)
w2 = 750;          //(N)(Weight of man)
d = 1.5;           //(m)(Distance between the man and bottom of ladder)

//Let uf = Coefficient of friction between ladder and floor  
//Rf = Normal reaction at the floor

//Resolving the forces vertically:
Rf = w1 + w2;             //(N)

//Force of friction at A:
//Ff = uf * Rf

//Taking moments about B and equating the same:
//Rf * 5 * sind(20) = (uf * 1650 * 5 * cosd(20)) + 4875 * sind(20)
//Substituting values of Rf anf Ff and dividing both sides by 5 * sind(20)
mu_f = (Rf - (w2*3.5*sind(20)))/(1650*cotd(20));
printf("Coefficient of friction between the ladder and the floor = %.2f",mu_f);    //The answers vary due to round off error
