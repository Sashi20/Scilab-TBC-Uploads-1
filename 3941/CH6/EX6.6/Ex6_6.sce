//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 6.3
//Finding the Number of Notches and Their Angles.

clc;
clear;
function [fval,jac] = g(X)
    b1=X(1);
    b2=X(2);
    b3=X(3);
    b4=X(4);
    fval(1,1)=1-(2*cosd(5*b1))+(2*cosd(5*b2))-(2*cosd(5*b3))+(2*cosd(5*b4));
    fval(2,1)=1-(2*cosd(7*b1))+(2*cosd(7*b2))-(2*cosd(7*b3))+(2*cosd(7*b4));
    fval(3,1)=1-(2*cosd(11*b1))+(2*cosd(11*b2))-(2*cosd(11*b3))+(2*cosd(11*b4));
    fval(4,1)=1-(2*cosd(13*b1))+(2*cosd(13*b2))-(2*cosd(13*b3))+(2*cosd(13*b4));
    jac = [2*5*-(sind(5*b1)), 2*5*-(sind(5*b2)),2*5*-(sind(5*b3)), 2*5*-(sind(5*b4));
    2*7*-(sind(7*b1)), 2*7*-(sind(7*b2)), 2*7*-(sind(7*b3)), 2*7*-(sind(7*b4));
    2*11*-(sind(11*b1)), 2*11*-(sind(11*b2)), 2*11*-(sind(11*b3)), 2*11*-(sind(11*b4));
    2*13*-(sind(13*b1)), 2*13*-(sind(13*b2)), 2*13*-(sind(13*b3)), 2*13*-(sind(13*b4))];
endfunction
X0 = [10; 16; 30; 32];
maxIter = 100;
tot = 0.9;
X = X0;
Xold = X0;
for i = 1:maxIter
    [f,j] = g(X);
    X =X- inv(j)*f;
    a = abs(X-Xold);
    Xold =X;
    if (a<tot)
        break;
    end
end
printf("\n\tThe angles of the nothches are,")
printf("\n\tα1 = %0.2f°",X(1,1));
printf("\n\tα2 = %0.2f°",X(2,1));
printf("\n\tα3 = %0.2f°",X(3,1));
printf("\n\tα4 = %0.2f°",X(4,1));
//Answers are changed due to round off error.
