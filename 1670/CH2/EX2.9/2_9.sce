//Example 2.9
//Newton Raphson Method
//Page no. 22
clc;clear;close;
deff('x=f(x)','x=exp(x)-5*x')
deff('x=f1(x)','x=exp(x)-5')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=0.4;e=0.00001
for i=1:5
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, this is convergent and the root is %.10f',x0)