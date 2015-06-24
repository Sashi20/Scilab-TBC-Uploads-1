clc
clear
//Initialization of variables
x1=11.5
x2=4.1
x3=0.4
x4=2.3
x5=0.2
x6=81.5
yc=0.842
yh=0.158
basis=1
bhp=100
burn=8.9 //gal/hr
sg=0.731
Qh=20750 //Btu/lbm
rate=66 //gpm
ex=1100 //F
air=70 //F
cp=0.254
h2=4330
h4=62000
h5=23700
//calculations
c1=x1*44
c2=x2*28
c3=x3*32
c4=x4*2
c5=x5*16
c6=x6*28
summ=c1+c2+c3+c4+c5+c6
carbon=x1*12 + x2*12+x5*12
hydrogen=x4*2+x5*4
lbdrygas=summ/carbon *yc
lbfuel=carbon/yc
lbH=lbfuel*yh
lbH2=lbH-hydrogen
lb3=lbH2*9
lbwater=lb3/lbfuel
lbair=lbdrygas+lbwater-basis
bsfc=burn*sg*8.33/bhp
fuelmin=bsfc*bhp/60
energy=2545/bsfc
per1=energy/Qh
Ec=rate*8.33*10
Eclb=Ec/fuelmin
per2=Eclb/Qh
dryloss=(ex-air)*cp*lbdrygas
per3=dryloss/Qh
hv2=h2*c2/lbfuel
hv4=h4*c4/lbfuel
hv5=h5*c5/lbfuel
hv=hv2+hv4+hv5
per4=hv/Qh
eh2=lbwater*(1066+0.5*ex-air)
per5=eh2/Qh
rad=1017 
per6=rad/Qh
//results
printf("Air supplied per lb of fuel = %.1f lb air per lb fuel",lbair)
printf("\n Percentage of energy supplied utilized in Btu = %.2f percent",per1*100)
printf("\n Percentage of energy absorbed by coolant = %.2f percent",per2*100)
printf("\n Energy lost in sensible heat = %.2f percent",per3*100)
printf("\n Energy supplied in combustiles in exhaust = %.2f percent",per4*100)
printf("\n Energy supplied in water formed by combustion = %.2f percent",per5*100)
printf("\n Energy supplied unaccounted for = %.2f percent",per6*100)
