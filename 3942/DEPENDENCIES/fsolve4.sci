//Chapter 8 example 8-5
//Following is the function to determine New volume flow rate (x(1)), Friction factor (x(2)), Velocity (x(3)) and Reynolds Number (x(4)) by solving 4 nonlinear equation with fsolve function
function f=fsolve4(x)
    f(1)=x(3)-(x(1)/(%pi*D^2/4))
    f(2)=x(4)-(x(3)*D/Nu)
    f(3)=(h_L*D)-((L/(2*g))*x(2)*x(3)^2)
    f(4)=(1/x(2))-(4*(log10(2.51/(x(4)*sqrt(x(2)))))^2)
endfunction
