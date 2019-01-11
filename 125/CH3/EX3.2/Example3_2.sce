//Caption: 2-D Linear Convolution
//Example3.2 &amp; Example3.5 &amp; Example3.9
//page 91 &amp; page 108 &amp; page 116
clc;
exec('conv2d2.sce');
exec('fft2d.sce');
exec('ifft2d.sce');
x =[1,2,3;4,5,6;7,8,9];
h = [1,1;1,1;1,1];
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
// Linear 2D convolution result y =   
// 
//    1.     3.     5.     3.   
//    5.     12.    16.    9.   
//    12.    27.    33.    18.  
//    11.    24.    28.    15.  
//    7.     15.    17.    9.   
//