//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 2;     //(kg)(Mass of the sphere)
l = 1.3;   //(m)(Length of the string)
r = 0.5;   //(m)(Radius of the horizontal circle)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//(i) Time taken by the bob for one revolution:

//Vertical distance between the bob and O(i.e. AO):
h = sqrt(l^2 - r^2);        //(m)

//Time taken by the bob for one revolution:
t = (2*%pi) * sqrt(h/g);    //(s)
printf("Time taken by the bob for one revolution = %.2f s\n",t);

//(ii) Tension in the string:
T = (m*g*l)/h;      //(N)
printf("Tension in the string = %.2f N",T);
