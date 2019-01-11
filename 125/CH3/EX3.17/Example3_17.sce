//Caption: linear auto correlation of a 2D matrix
//Example3.17
//page 136
clc;
exec('conv2d2.sce');
exec('fft2d.sce');
exec('ifft2d.sce');
x1 = [1,1;1,1];
x2 = x1(:,$:-1:1);
x2 = x2($:-1:1,:);
x = conv2d2(x1,x2)
disp(x,'Linear auto Correlation result x=')
//Result
//Linear auto Correlation result x=   
// 
//    1.    2.    1.  
//    2.    4.    2.  
//    1.    2.    1.