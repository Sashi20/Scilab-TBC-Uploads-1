clc
exec('252.sci')
//Here We used standard library functions mean and stdev
ybar=mean(y);
sy=stdev(y);
defaultvalue=ybar+3*sy+1;
printf("the maximum allowed value of y i.e. bad batches in a week is %d \n", defaultvalue)
disp("in case of 2 standard deviations");
defaultvalue=ybar+2*sy+1;
printf("the limiting value of y i.e. bad batches in a week is %d",defaultvalue)