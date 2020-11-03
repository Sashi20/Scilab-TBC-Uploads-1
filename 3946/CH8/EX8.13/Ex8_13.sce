//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W1 = 1;            //(kN)(First Load)
alpha1 = 45;           //(degrees)(Angle made by inclined plane OA with the horizontal)

alpha2 = 30;           //(degrees)(Angle made by inclined plane OB with the horizontal)

Phi = 20;           //(degrees)(Angle of friction for both the planes)

//Maximum value of W2:
P = W1 * tand(alpha1 + Phi);            //(kN)
//E2 = W2 * tand(alpha2 - Phi)

//Equating E1 and E2:
W2 = P/(tand(alpha2 - Phi));
printf("Maximum value of W2 = %.2f kN\n",W2);

//Minimum value of W2:
P = W1 * tand(alpha1 - Phi);           //(kN)
//E2 = W2 * tand(alpha2 + Phi);

//Equating E1 and E2:
W2 = [P/(tand(alpha2 + Phi))]*1000;      //(N)
printf("Minimum value of W2 = %.2f N",W2);    //The answers vary due to round off error
