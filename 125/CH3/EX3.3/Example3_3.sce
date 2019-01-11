//Caption: 2-D Linear Convolution
//Example3.3 &amp; Example3.6 &amp; Example3.10
//page 100 &amp; page 109 &amp; page 119
clc;
exec('conv2d2.sce');
exec('fft2d.sce');
exec('ifft2d.sce');
x =[1,2,3;4,5,6;7,8,9];
h = [3,4,5];
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
//Linear 2D convolution result y =   
// 
//    3.     10.    22.    22.    15.  
//    12.    31.    58.    49.    30.  
//    21.    52.    94.    76.    45.