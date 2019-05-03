clc
clear
close

n=[0:10]';
y= [0;zeros(length(n)-1,1)];//predefining the initial conditions + zero output array
x=(n+1).^2;
for k=1:length(n)-1
  y(k+1) =y(k)+x(k);
end;

plot2d3(n,y,[5]);title("Sum of the k^2","fontsize",4);

