clc
clear
close;

n=[-2:20]';//defining the discrete time
y= [0;0;zeros(length(n)-2,1)];//predefining the initial conditions + zero output array
x=zeros(length(n),1);x(3)=1;
for k=1:length(n)-2
  y(k+2) = 0.6*y(k+1) + 0.16*y(k)+5*x(k+2);
end;
plot2d3(n,y,[5]);title("(impulse_response)","fontsize",4);
