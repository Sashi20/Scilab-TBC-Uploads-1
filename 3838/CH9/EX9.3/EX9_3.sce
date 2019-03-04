//Example 9.3
clc;
x0=[2,1,2,1]
x1=fft(x0);
disp('X1(K)=')
disp(x1);
x2=[1,2,3,4]
x3=fft(x2)
disp('X2(K)=')
disp(x3);
x4=x1.*x3
disp('X1(K)*X2(K)=')
disp(x4)
x5=ifft(x4)
disp('x1(n)*x2(n)')
disp(x5)
