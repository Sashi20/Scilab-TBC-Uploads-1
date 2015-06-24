//clc()
//f'(x,y) = -2*x^3 + 12*x^2 -20*x + 8.5
//f(x,y) = -x^4 / 2 + 4*x^3 - 10*x^2 + 8.5*x + 1
h = 0.5;
x = 0:h:4;
y1 = -x^4 / 2 + 4*x^3 - 10*x^2 + 8.5*x + 1;
y(1) = 1;
for i=1:8
     k1(i) = -2*x(i)^3 + 12*x(i)^2 -20*x(i) + 8.5;
    x1(i) = x(i) + h/2;
    k2(i) = -2*x1(i)^3 + 12*x1(i)^2 -20*x1(i) + 8.5;
    k3(i) = -2*x1(i)^3 + 12*x1(i)^2 -20*x1(i) + 8.5;
    x2(i) = x(i) + h;
    k4(i) = -2*x2(i)^3 + 12*x2(i)^2 -20*x2(i) + 8.5;
    y(i+1) = y(i) + (k1(i)+2*k2(i)+2*k3(i)+k4(i))*h/6;
    e(i) = (y1(i) - y(i))*100/y1(i);
end
disp("f(x,y) = -2*x^3 + 12*x^2 -20*x + 8.5")
disp(y(1:9),"y by fourth order Ralston RK")
disp("f(x,y) = 4*exp(0.8*x) - 0.5*y")
x = 0:h:0.5;
y(1) = 2;
k1 = 4*(exp(0.8*x(1)))-0.5*y(1);
x1 = x(1) + 0.5*h;
y1 = y(1) + 0.5*k1*h;
k2 = 4*exp(0.8*x1) - 0.5*y1;
y2 = y(1) + 0.5*k2*h;
k3 = 4*exp(0.8*x1) - 0.5*y2;
x1 = x(1) + h;
y1 = y(1) + k3*h;
k4 = 4*exp(0.8*x1) - 0.5*y1;
y(2) = y(1) + (k1+2*k2+2*k3+k4)*h/6;
disp(y(1:2),"y = ")
