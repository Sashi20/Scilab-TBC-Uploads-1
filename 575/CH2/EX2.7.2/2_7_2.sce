clc
exec('272.sci')
disp(sqrtT);
sx=sum(sqrtT);sx2=sum(T);sy=sum(M);sxy=sum(sqrtT.*M);n=length(T);
A=[sx,n;sx2,sx]; B=[sy;sxy]; p=A\B;
a=p(1,1);b=p(2,1);
clf()
xtitle('2.7.2.sce','T1/2','mdot','boxed')
plot2d(sqrtT,M,style=3);
printf("slope=%f",a);
printf("\n intercept=%f",b);