clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.8
//(i)calculation of coherent length of wavetrain (ii) to check whether interference is observed by human eye
//given data
tau_c=10^-8; //coherent time (in s)
c=3*10^8; //speed of light (in m/s)
x1=5; //distance travelled by one beam (in m) 
x2=10; //distance travelled by other beam (in m)
//calculation
l_c=c*tau_c; //coheret length (in m)
del_x=x2-x1; //path difference between two beams (in m)
printf("\n(i)coherent length of wavetrain is %d m",l_c)
printf("\n(ii)path difference between two beams is %d m",del_x)
if del_x<l_c then
    disp("interference is observable by human eye")
else
    disp("interference is not observable by human eye")
end
