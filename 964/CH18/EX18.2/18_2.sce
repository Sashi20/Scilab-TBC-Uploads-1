//clc()
x = 2;
x0 = 1;
m = 0;
x1 = 4;
n = 1.386294;
x2 = 6;
p = 1.791759;
b0 = m;
b1 = (n - m)/(x1 - x0);
b2 = ((p - n)/(x2 - x1) - (n - m)/(x1 - x0))/(x2 - x0);
disp(b0,"b0 = ")
disp(b1,"b1 = ")
disp(b2,"b2 = ")
f = b0 + b1*(x - x0) + b2*(x - x0)*(x - x1);
disp(f,"f(2) = ")
r = log(2);
e = (r -f)*100/r;
disp("%",e,"error = ")
