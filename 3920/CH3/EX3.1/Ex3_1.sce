// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
//Refer Dependency codes QuadPointsPlot.sci and GraphSolveQL.sci 
/***Caution:- Dependency code 'QuadPointsPlot.sci' must be executed first and then the dependency code 'GraphSolveQL.sci' should be executed***/

//Example A , Page 55
deff('[y]=f1(x)','y=x^2+2*x+1');
funcprot(0)
 //Comparing the given equation y=x^2+2*x+1 with y=a*x^2+b*x+c
a=1;
b=2;
c=1;
Rect1=[-5,-2,5,8]; //rect for axes in Graph
printf("\nExample A, Page 55\n")
printf("---------------------\n")
printf("For the Equation y = x^2+2x+1\n ")
QuadPointsPlot(a,b,c,f1,Rect1,0)
xtitle("Fig. 3-6. Plot of the parabola y=x^2+2x+1.", "x","y")

//Example B , Page 56
deff('[y]=f2(x)','y=-2*x^2+4*x-5');
funcprot(0)
 //Comparing the given equation y=-2x^2+4*x-5 with y=a*x^2+b*x+c
a=-2;
b=4;
c=-5;
Rect2=[-5,-16,5,4]; //rect for axes in Graph.
printf("\nExample B, Page 56\n")
printf("---------------------\n")
printf("For the Equation y = -2x^2+4x-5\n ")
QuadPointsPlot(a,b,c,f2,Rect2,1)
xtitle("Fig. 3-7. Plot of the parabola y=-2x^2+4x-5.", "x","y")

//Example A, Page 59
deff('[y]=f1(x)','y=x^2+2*x+1');
funcprot(0)
deff('[y]=g1(x)','y=-x+1')
funcprot(0)
printf("\nExample A, Page 59\n")
printf("---------------------\n")
GraphSolveQL(f1,g1,Rect1,2)
xtitle("Fig. 3-9. Graphical method of solving equations y=x^2+2x+1 and y=-x+1.", "x","y")

//Example B, Page 60
deff('[y]=f2(x)','y=-2*x^2+4*x-5');
funcprot(0)
deff('[y]=g2(x)','y=-2*x-5')
funcprot(0)
printf("\nExample B, Page 60\n")
printf("---------------------\n")
GraphSolveQL(f2,g2,Rect2,3)
xtitle("Fig. 3-10. Graphical method of solving equations y=-2x^2+2x-5 and y=-2x-5.", "x","y")
