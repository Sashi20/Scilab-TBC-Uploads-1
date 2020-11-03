//Chapter 8 example 8-7
//Following is the function to determine 13 unknown using 13 equations and fsolve function where x(1) is Total volume flow rate, x(2) is Volume flow rate in pipe 1, x(3) is Volume flow rate in pipe 2, x(4) is Velocity in pipe 1, x(5) is Velocity in pipe 2, x(6) is Head loss in pipe, x(7) is Head loss in pipe 1, x(8) is Head loss in pipe 2, x(9) is useful pump head, x(10) is Reynolds number in pipe 1, x(11) is Reynolds number in pipe 2, x(12) is Friction factor in pipe 1 and x(13) is Friction factor in pipe 2.
function f=fsolve5(x)
    f(1)=(W_elect*Eta_pump_motor)-(g*rho*x(1)*x(9))
    f(2)=x(9)-(Z_B-Z_A)-x(6)
    f(3)=x(6)-x(7)
    f(4)=x(6)-x(8)
    f(5)=x(4)-(x(2)/A_c_1)
    f(6)=x(5)-(x(3)/A_c_2)
    f(7)=x(10)-(rho*D1*x(4)/Mu)
    f(8)=x(11)-(rho*D2*x(5)/Mu)
    f(9)=(1/x(12))-(4*(log10(Epsilon_by_D1+(2.51/(x(10)*sqrt(x(12))))))^2)
    f(10)=(1/x(13))-(4*(log10(Epsilon_by_D2+(2.51/(x(11)*sqrt(x(13))))))^2)
    f(11)=(D1*2*g*x(7))-(L1*x(12)*x(4)^2)
    f(12)=(D2*2*g*x(8))-(L2*x(13)*x(5)^2)
    f(13)=x(1)-x(2)-x(3)
endfunction
