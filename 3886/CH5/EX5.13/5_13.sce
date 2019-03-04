//A horizontal bar
//refer fig. 5.17
//from law of friction
//FA=0.2*NA
//FB=0.2*NB
//Applying equilibrium condition
//0.6732*NA+0.5657*NB=1100
//NA=1.1077*NB
//Solving we get
NB=838.79  //N
NA=1.1077*NB  //N
//Taking moment about B
x=(-750+0.2*929.13*3*sind(60)+929.13*3*sind(30))/(600)  //m from B
//For impending motion
//Applying equilibrium condition
//0.3268*NA+0.8485*NB=1100
//solving
//NA=0.5856*NB
//Thus impending values are
INB=1057.82  //N
INA=0.5856*INB
//Taking moment about B
Ix=(-750+619.67*3*sind(30)-0.2*619.67*3*sind(30))/(600)  //m
printf("Thus 600N load can be placed anywhere between B and a point 1.85 m from B")
