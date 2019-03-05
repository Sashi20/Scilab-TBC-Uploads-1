clc
exec('511.sci')
invPbar=wtperct/Dwater + (1-wtperct)/Dsulfuric
printf("Density calculated using volume additvity=%f",1/invPbar)
Pbar=wtperct*Dwater + (1-wtperct)*Dsulfuric
printf(" \n Density calculated using mass additivity=%f",Pbar)