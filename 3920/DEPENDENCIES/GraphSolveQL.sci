// Coded with Scilab 6.0.1 on Linux Mint 19
//Function for Graphical Solution of a quadratic and a linear equation (To plot the Graph and find solution).
/* Caution:- To be executed after QuadPointsPlot.sci is executed*/
//The function is used in Example A, page 59 and Example B, page 60 of Chapter 3.
function GraphSolveQL(f,g,gRect,gWindow)
    // f is function for the Quadratic Equation and g is function for the linear Equation
    // gRect is range for axis on Graph and gWindow is graphic window number.
  scf(gWindow);
  clf();
x=linspace(gRect(1),gRect(3),10000);

//plotting the graph of Quadratic Equation,
plot2d(x,f(x),rect=gRect)

//plotting the graph of Linear Equation
plot2d(x,g(x),rect=gRect)

//setting axis to origin
a=gca();
a.x_location="origin";
a.y_location="origin";

//Finding the solutipn(s)
//As it is clear from the equations, the graph will have two points of intersection i.e. the equations will have two solutions.
n=0; //no. of solution found

for i=-100:100
    if (f(i)==g(i) && n==0)
        x1=i;
        y1=g(i);
        n=n+1;
    
    elseif (f(i)==g(i) && n==1)
        x2=i;
        y2=g(i);
        n=n+1;
    end
end

//checking if both the solutions are found
if n~=2
   printf("%d solution(s) is/are found. %d Solution(s) is/are missing. Increase the range of iteration.",n,2-n)
end
printf("The coordinates of the points corresponding to the solutions are \n")
 printf("(%d,%d)\n",x1,y1)
 printf("(%d,%d).\n",x2,y2)

endfunction
