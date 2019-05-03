clc
clear
close;

a=1;//taking a=1
E=1/(2*a);
W=a*tan(0.95*%pi*a*E);
printf("\nthe frequency upto W=%.3f rad/s will contain \n95 percent of the signal energy\n",W);
