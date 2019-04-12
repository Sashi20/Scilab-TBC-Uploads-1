clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.32
//calculation of optical rotation 
//given data
l1=20; //length of a certain solution (in cm)
l2=30; //length of another solution (in cm)
l=30; //length of a mixture of both the solutions (in cm)
r1=+42; //right handed rotation (in degrees)
r2=-27; //left handed rotation (in degrees)
ratio1=1; //ratio of first solution
ratio2=2; //ratio of second solution
//calculation
theta1=r1/l1*l*ratio1/(ratio1+ratio2); //rotation of right handed solution
theta2=r2/l2*ratio2/(ratio1+ratio2)*l; //rotation of left handed solutioncal rotation is
theta=theta1+theta2; //total optical rotation
printf("\ntotal optical rotation is %d",theta)
if theta>0 then
    disp("3 degree right handed rotation")
else
    disp("3 degree left handed rotation")
end

