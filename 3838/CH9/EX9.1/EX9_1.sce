//Example 9.1
clc;
i=0;
k0=0;
k1=1;
k2=2;
k3=3;
k4=4;
k5=5;
k6=6;
k7=7;
X0=0;
X1=0;
X2=0;
X3=0;
for i=0:2
X0=X0+((1*(exp(-%i*2*%pi*k0*i/4))/3))
X1=X1+((1*(exp(-%i*2*%pi*k1*i/4))/3))
X2=X2+((1*(exp(-%i*2*%pi*k2*i/4))/3))
X3=X3+((1*(exp(-%i*2*%pi*k3*i/4))/3))
end
disp('For N=4 points:')
disp('X(K)=')
disp(X3,X2,X1,X0)
x1=[X0,X1,X2,X3]
x2=(real(x1).^2+imag(x1).^2).^(1/2)
disp('Magnitude:')
disp(x2)
x3=atan(imag(x1),real(x1))
disp('Phase:')
disp(x3)
X0=0;
X1=0;
X2=0;
X3=0;
X4=0;
X5=0;
X6=0;
X7=0;
disp('For N=8 points:')
disp('X(K)=')
for i=0:2
X0=X0+((1*(exp(-%i*2*%pi*k0*i/8))/3))
X1=X1+((1*(exp(-%i*2*%pi*k1*i/8))/3))
X2=X2+((1*(exp(-%i*2*%pi*k2*i/8))/3))
X3=X3+((1*(exp(-%i*2*%pi*k3*i/8))/3))
X4=X4+((1*(exp(-%i*2*%pi*k4*i/8))/3))
X5=X5+((1*(exp(-%i*2*%pi*k5*i/8))/3))
X6=X6+((1*(exp(-%i*2*%pi*k6*i/8))/3))
X7=X7+((1*(exp(-%i*2*%pi*k7*i/8))/3))
end
disp(X7,X6,X5,X4,X3,X2,X1,X0)
x1=[X0,X1,X2,X3,X4,X5,X6,X7]
x2=(real(x1).^2+imag(x1).^2).^(1/2)
disp('Magnitude:')
disp(x2)
x3=atan(imag(x1),real(x1))
disp('Phase:')
disp(x3)

