//Chapter 8 example 8-8
//Following function is used to determination of friction factor from colebrook equation using fsolve function
function f=fsolve6(f0)
    f=(1/f0)-(4*(log10((Epsilon_by_D/3.7)+(2.51/(Re*sqrt(f0)))))^2)
endfunction
