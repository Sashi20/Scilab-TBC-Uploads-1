clc
clear
close;

function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1);
endfunction

y0=[0;-5];
t0=0;
t=linspace(0,15,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation
v_0=5;
y_0=y0(1);
dy_0= 10-v_0-3*y_0;//eq obtained from circuit 

figure(1)
plot(t,y(1,:));     //plotting the obtained result
xtitle("current ","time","current(i) for t>=0");
printf("\nthe value of y(0+)= %d,  y''(0+)= %d\n\n",y_0,dy_0);
