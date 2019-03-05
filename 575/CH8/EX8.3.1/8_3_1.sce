clc
exec('831.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook \n ")
function[Cv]=fun(T)
    Cv=0.855+ T*9.42*10^(-4)
endfunction
[Ucap,err]=intg(Ti,Tf,fun)  //intg is an inbult function used for definite integration
Q=mass*Ucap
printf("Heat Required=%f KJ",Q)