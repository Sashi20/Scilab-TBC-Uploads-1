//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 3.25;           //(m)(Length of the ladder)
w = 250;            //(N)(Weight of the ladder)
d = 1.25;           //(m)(Distance between the lower end of the ladder and the wall)
mu_f = 0.3;           //(Coefficient of friction between the ladder and the floor)

//Ff = Frictional force acting on the ladder at the Point of contact between the ladder and floor
//Rf = Normal reaction at the floor

//Resolving the forces vertically:
Rf = 250;             //(N)

//From geometry:
BC = sqrt((l)^2 - (d)^2);       //(m)

//Taking moments about B and equating the same:
Ff = ((Rf * d) - (w * d/2))/3;     //(N)

printf("Frictional Force = %.2f N\n",Ff);    //The answers vary due to round off error

//Equilibrium of the ladder:
E = mu_f * Rf;            //(N)

printf("Since E = %.2f N > Ff = %.2f N the ladder will remain in an equilibrium position.",E,Ff);
