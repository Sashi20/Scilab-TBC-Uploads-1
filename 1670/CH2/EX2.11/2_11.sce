//Example 2.11
//Newton Raphson Method
//Page no. 23
clc;clear;close;
deff('x=f(x)','x=x*sin(x)+cos(x)')
deff('x=f1(x)','x=x*cos(x)')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=%pi;e=0.00001
for i=1:6
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, the root is %.4f',x0)