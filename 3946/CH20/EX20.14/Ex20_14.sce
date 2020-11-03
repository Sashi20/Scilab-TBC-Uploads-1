//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 30;     //(m/s)(Initial velocity)
OB = 15;    //(m)(Distance of point of projection from wall)
h = 6;      //(m)(Height of the wall)

//Let alpha = Angle of projection
//Vertical component = 30 * cosd(alpha)

//Vertical distance travelled by the shot:
//6 = (30 * sind(alpha))*t - 4.9*t^2     -(1)


//In order to enable the shot just to clear the top of the wall, it must traverse 15 m in tseconds:
//t = 15/(30 * cosd(alpha));     -(2)

//Substituting (2) in (1):
//1.225*tand(alpha)^2 - 15*tand(alpha) + 7.225 = 0;
//Let tand(alpha) = y

p = poly([7.225 -15 1.225],'y','c');
y = roots(p);

a1 = real(y(1));
a2 = real(y(2));
alpha1 = atand(a1);
alpha2 = atand(a2);
printf("Angle of projection: %.2f degrees or %.2f degrees",alpha1,alpha2);
//The answers vary due to round off error
