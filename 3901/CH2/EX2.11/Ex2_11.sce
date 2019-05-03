clc
clear
close;

y0=[2;3];//initial conditions for impulse response
t0=0;
t=linspace(0,15,500);

//*************************part-a(x(t)=10e^(-3t))*************************
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1)-30*exp(-3*t);
endfunction

y1=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

figure(1)
subplot(2,2,1);plot(t,y1(1,:));     //plotting the obtained result
title("(part_a)system_response","fontsize",3);
xlabel("time","fontsize",3);
ylabel("y(t)","fontsize",3);


//*************************part-b(x(t)=5))*************************
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1);
endfunction

y2=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

subplot(2,2,2);plot(t,y2(1,:));     //plotting the obtained result
title("(part_b)system_response","fontsize",3);
xlabel("time","fontsize",3);
ylabel("y(t)","fontsize",3);



//*************************part-c(x(t)=e^-2t)*************************
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1)-2*exp(-2*t);
endfunction

y3=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

subplot(2,2,3);plot(t,y3(1,:));     //plotting the obtained result
title("(part_c)system_response","fontsize",3);
xlabel("time","fontsize",3);
ylabel("y(t)","fontsize",3);



//*************************part-d(x(t)=10cos(3t+pi/3)*************************
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1)-30*sin(3*t+%pi/3);
endfunction

y4=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

subplot(2,2,4);plot(t,y4(1,:));     //plotting the obtained result
title("(part_d)system_response","fontsize",3);
xlabel("time","fontsize",3);
ylabel("y(t)","fontsize",3);
