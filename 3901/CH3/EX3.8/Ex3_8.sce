clc
clear
close

n=[-1:4]';//defining the discrete time
y= [16;zeros(length(n)-1,1)];

//predefining the initial conditions + zero output array

x=[0;n(2:$).^2]; //defining input array with first entry corresponding to time instant -1

for k=1:length(n)-2
y(k+1) =0.5*y(k)+x(k+1);
end;

plot2d3(n,y,[5]);
