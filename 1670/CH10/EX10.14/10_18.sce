//Example 10.18
//Fourth Order Runge Kutta Method for higher order equations
//Page no. 328
clc;clear;close;
deff('y=f(x,y,z)','y=z')
deff('y=g(x,y,z)','y=(x^2-y^2)/(1+z^2)')
y=1;h=0.5;z=0;
for i=1:2
    x=(i-1)*h
    K(1)=h*f(x,y,z);
    L(1)=h*g(x,y,z);
    K(2)=h*f(x+h/2,y+K(1)/2,z+L(1)/2);
    L(2)=h*g(x+h/2,y+K(1)/2,z+L(1)/2);
    K(3)=h*f(x+h/2,y+K(2)/2,z+L(2)/2);
    L(3)=h*g(x+h/2,y+K(2)/2,z+L(2)/2);
    K(4)=h*f(x+h,y+K(3),z+L(3));
    L(4)=h*g(x+h,y+K(3),z+L(3));
    y=y+(K(1)+2*K(2)+2*K(3)+K(4))/6
    z=z+(L(1)+2*L(2)+2*L(3)+L(4))/6
    for j=1:4
        printf('\n K%i = %g\t\tL%i = %g\n',j,K(j),j,L(j))
    end
    printf('\ny(%g) = %.8f\t\tz(%g) = %.8f\n\n\n\n',x+h,y,x+h,z)
end