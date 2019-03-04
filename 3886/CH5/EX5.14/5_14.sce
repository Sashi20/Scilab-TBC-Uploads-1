//rope and drum
//refer fig. 5.19
//Angle of contact
theta=1.25*2*%pi  //radian
//Case (a)- Impending motion of weight be downward
aT1=600  //N
//aT2=W
//from law of rope friction
aW=600*((%e)^(0.75*%pi))  //N
//Case (b)-Impending motion of weight be upwards
//bT1=W
bT2=600  //N
//thus
bW=(600)/((%e)^(0.75*%pi))  //N
printf("Thus a 600 N force can support a range of loads between %.2f N to %.2f N",bW,aW) 
