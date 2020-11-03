//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha1 = 15;     //(Degrees)(Angle of projection with the horizontal)
//R1 = R - 12;    //(m)(Horizontal range)

alpha2 = 45;     //(Angle of projection with the horizontal)
g = 9.8;         //(m/s^2)(Accn due to Gravity)
//R2 = R + 24;   //(m)(Horizontal range)

//Let u = Velocity of projection,
//alpha = Angle of projection to hit the mark.

//(1):
// R - 12 = (u^2 * sind(30))/g;

//(2):
// R + 24 = (u^2 * sind(90))/g;

//(1)/(2):
R = 24/0.5;        //(m)

//Substituting R in (1):
u = sqrt(((R - 12)*g)*2);     //(m/s)

//H = (u^2 * sind(2*alpha))/g;    (Horizontal distance)
H = 48;
alpha = asind(((H * g)/u^2))/2;      //(Degrees)
printf("Angle of projection to hit the mark = %.2f degrees",alpha);
