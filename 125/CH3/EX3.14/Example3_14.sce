//Caption: linear cross correlation of a 2D matrix
//Example3.14
//page 129
clc;
exec('conv2d2.sce');
exec('fft2d.sce');
exec('ifft2d.sce');
x = [3,1;2,4];
h1 = [1,5;2,3];
h2 = h1(:,$:-1:1);
h = h2($:-1:1,:);
y = conv2d2(x,h)
disp(y,'Linear cross Correlation result y=')
//Result
//Linear cross Correlation result y=   
// 
//    9.     9.     2.  
//    21.    24.    9.  
//    10.    22.    4.