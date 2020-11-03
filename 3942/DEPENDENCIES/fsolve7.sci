//Chapter 8 example 8-9
//Following is the function to determine Volume flow rate x(1), Friction factor x(2), Velocity x(3), Reynolds number x(4) by solving 4 non linear equations using fsolve function
function f1=fsolve7(x)
    f1(1)=(h_L*2*g)-((Sigma_K_L_shower+((L_shower/D)*x(2)))*x(3)^2)
    f1(2)=x(3)-(x(1)/A)
    f1(3)=x(4)-(x(3)*D/Nu)
    f1(4)=(1/x(2))-(4*(log10((Epsilon_by_D/3.7)+(2.51/(x(4)*sqrt(x(2))))))^2)
endfunction
