// Coded with Scilab 6.0.1 on Linux Mint 19
//Function to Find Points and plot the graph of a Quadratic Equation.
/* Caution:- To be executed before GraphSolveQL.sci is executed*/
//The function is used in Example A, Page 55 and Example B, Page 56 of Chapter 3.
clear;
function QuadPointsPlot(A,B,C,f,gRect,gWindow)
  // A,B,C are coefficients in the equation given and f is the function defined for the equation.
  // gRect is range for axis on Graph and gWindow is graphic window number.
    x_0=-B/(2*A);
    y_0=C-B^2/(4*A);
    printf("The known points are:-\n ")
    printf("(x_0,y_0) = (%d,%d)\n ",x_0,y_0)
    printf("(x_-2,y_-2) = (%d,%d)\n ",x_0-2,f(x_0-2))
    printf("(x_-1,y_-1) = (%d,%d)\n ",x_0-1,f(x_0-1))
    printf("(x_1,y_1) = (%d,%d)\n ",x_0+1,f(x_0+1))
    printf("(x_2,y_2) = (%d,%d)\n",x_0+2,f(x_0+2))
  x=[x_0-2, x_0-1, x_0, x_0+1, x_0+2];
  y=[f(x_0-2), f(x_0-1), f(x_0), f(x_0+1), f(x_0+2)]

  scf(gWindow)
  clf()
  plot2d(x,y,style=-9,rect=gRect) //plotting the points
  X=linspace(gRect(1),gRect(3),1000)
  plot2d(X,A*X^2+B*X+C,rect=gRect)  //plotting the parabola
//setting axis to origin
a=gca();
a.x_location="origin";
a.y_location="origin";
endfunction
