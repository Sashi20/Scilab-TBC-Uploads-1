//determine law of machine and maximum efficiency
//fig.6.4 shows graph of effort vs load
//from graph
C=10  //N
//slope 
m=30/500
//Law of machine is P=m*W+C
//P=0.06*W+10
//eta=MA/VR=W/25P
//table 6.5 shows calculation of efficiency for various loads 
//Refer fig. 6.5
//from graph it can be seen that maximum efficiency=50% but the graph is plotted for infinitely large load
//thus
//Maximum efficiency
VR=25
Emax=100/(m*VR)  //percent
printf("\nLaw of machines is P=0.06*W+10\nMaximum efficiency=%.2f percent",Emax)
//graph 1(g1)
x=[0,100,200,300,400,500,600]
y=[0,16,22.5,28.0,34,40.5,46.5]
plot(x,y,"r")
xtitle("Plot of load (w)-Effort(p) (red line) and Load (W)-%efficiency (blue line)")
xlabel('$Load (W)$')
//graph 2 (g2)
x=[0,100,200,300,400,500,600]
y=[0,25,36.56,42.86,47.06,49.38,51.61]
plot(x,y,"b")
//Red graph is load (w)- Effort(p)
//blue graph is Load (W)-%efficiency



 


