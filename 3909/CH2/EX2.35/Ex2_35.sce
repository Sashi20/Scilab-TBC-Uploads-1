clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.35
//calculation of angle  of rotation of hydrogen red and mercury blue
//given data
lambda_hr=6438; //wavelength (in m) of hydrogen red light
lambda_mb=4358; //wavelength (in m) of mercury blue light
S_6438=18.02; //specific rotation (in deg/mm) of hydrogen red light
S_4358=41.55; //specific rotation (in deg/mm) of mercury blue light
S_5893=21.72; //specific rotation (in deg/mm) of sodium yellow light
pi=180; //value of pi (in degrees)
//calculation
theta_5893=pi/2; //angle of rotation (in degrees) of sodium yellow light
l=theta_5893/S_5893; //path length (in mm)
theta_6438=S_6438*l; //angle of rotation (in degrees) of hydrogen red light
theta_4358=S_4358*l; //angle of rotation (in degrees) of mercury blue light
printf("\nangle of rotation of hydrogen red light is %0.1f degrees",theta_6438)
printf("\nangle of rotation of mercury blue light is %0.1f degrees",theta_4358)
//the answers vary due to round off error
