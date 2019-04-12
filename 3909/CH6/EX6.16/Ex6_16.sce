clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.16
//calculation of length and orientation of the rod
Lx0=5*cosd(30); //component of length in x direction
Ly0=5*sind(30); //component of length in y direction
c=3*10^8; //speed (in m/s) of light
v=0.6*c; //velocity (in m/s) of rod
Lx=Lx0*sqrt(1-v^2/c^2); //length in x direction as seen by the observer
Ly=Ly0; //length in y direction as seen by the observer
L=sqrt(Lx^2+Ly^2); //length (in m)
theta=atand(Ly/Lx); //orientation of the rod (in degree)
printf("\nlength of rod is %1.1f m",L)
printf("\norientation of the rod is %2.1f degree",theta)
//the answers of length vary due to round off error
