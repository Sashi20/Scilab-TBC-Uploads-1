//Chapter 8 example 8-4
//Following is the function to determine Velocity (x(1)), Diameter (x(2)), Reynolds number (x(3)) and Friction factor (x(4)) by solving 4 nonlinear equation using fsolve function.
function f=fsolve3(x)
    f(1)=(x(1)*x(2)^2)-((4*V_dot)/%pi)
    f(2)=x(3)-((1/Nu)*x(1)*x(2))
    f(3)=(h_L*x(2))-((L/(2*g))*x(4)*x(1)^2)
    f(4)=(1/x(4))-(4*(log10(2.51/(x(3)*sqrt(x(4)))))^2)
endfunction
