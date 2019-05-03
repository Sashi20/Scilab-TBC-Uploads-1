clc
clear

x1="cos(w0t)-sqrt(3)sin(w0t)";//given signal
a1=1;b1=-sqrt(3);
c1=sqrt(a1^2+b1^2);   
theta_1=atan(-b1/a1);
theta_1=(180/%pi)*theta_1;//converting radian to degrees

x2="-3 cos(w0t)+4*sin(w0t)";//given signal
a2=-3;b2=4;
c2=sqrt(a2^2+b2^2);
theta_2=atan(-b2/a2);
theta_2=(180/%pi)*theta_2-180;//here 180 is reduced as the phasor lies in the 3rd quadrant because atan gives values only in 1st quadrant

//showing the signals as single sinusoids with values with accuracy upto 2 points
printf("(a) x1(t)=  %.2f*cos(w0t+%.2f(deg))\n",c1,theta_1);
printf(" (b) x2(t)=  %.2f*cos(w0t%.2f(deg))\n",c2,theta_2);
