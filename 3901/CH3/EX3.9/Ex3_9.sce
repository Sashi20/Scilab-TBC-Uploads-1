clc
clear
close

n=[-2:10]';//defining the discrete time
y= [1;2;zeros(length(n)-2,1)];

//predefining the initial conditions + zero output array

x=[0;0;n(3:$)]; //defining input array with first two entries corresponding to time instants -2 and -1

for k=1:length(n)-2
y(k+2) = y(k+1) -0.24*y(k) + x(k+2) - 2*x(k+1);
end;

plot2d3(n,y,[2]);
set(gca(),"zoom_box",[-10 -25 10 25],"x_location","middle","y_location","middle");
title("iterative solution","fontsize",4)

