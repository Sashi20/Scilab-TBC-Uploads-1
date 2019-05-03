clc
clear
close

n=[0:10]';//defining the discrete time
y= [4;13;zeros(length(n)-2,1)];//predefining the initial conditions + zero output array
x=(3*n+5);
for k=1:length(n)-2
y(k+2) = 5*y(k+1)-6*y(k)+x(k+1)-5*x(k);
end;

plot2d3(n,y/(10^5),[2]);title("system_solution","fontsize",4);
set(gca(),"zoom_box",[-10 -4 10 4],"x_location","middle","y_location","middle");
legend("scale=10^5","fontsize",2)
