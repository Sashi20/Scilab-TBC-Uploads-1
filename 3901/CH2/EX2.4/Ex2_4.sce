clc
clear
close;

function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1);
endfunction

y0=[1;-3];//initial conditions for impulse response calculated from given system equation
t0=0;
t=linspace(0,15,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

figure(1)
subplot(2,1,1);plot(t,y(1,:));     //plotting the obtained result
title("impulse_response","fontsize",4);
xlabel("time","fontsize",4);
ylabel("y(t)","fontsize",4);

//checking if the obtained ans is correct

subplot(2,1,2);plot(t,-exp(-t)+2*exp(-2*t));//plotting the estimated answer for comparision
title("estimated ans for comparison","fontsize",4);
xlabel("time","fontsize",4);
ylabel("-exp(-t)+2*exp(-2*t)","fontsize",4);

