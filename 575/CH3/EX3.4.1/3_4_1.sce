clc
exec('3_4_1.sci')
Pressure=Pressure*1000/(13600*9.807)
printf("Pressure =%E mm of Hg",Pressure)