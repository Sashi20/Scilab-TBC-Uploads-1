//EX5_7 PG-5.13
clc
Vbe=0.7;//base emitter voltage for silicon
Vcc=12;//supply voltage
R1=10e3;
R2=2e3
Re=470;
Rc=2e3
hFE_min=50;
hFE_max=60;
Vb=R2*Vcc/(R1+R2);//base voltage
printf("\n Vb=%.0f V\n",Vb)
Ve=Vb-Vbe;//emitter voltage
printf("\n Ve=%.1f V \n",Ve)
Ie=Ve/Re;
printf("\n Ie=%.2f mA \n",Ie*1e3)
printf("\ni) for hFE_min=50")
Beta=hFE_min;
Ib=Ie/(Beta+1);
Ic=Beta*Ib;
printf("\n   Ic=%.3f mA \n",Ic*1e3)
Vce=Vcc-Ic*Rc-Ve;
printf("   Vce=%.3f V \n",Vce)
disp("ii)for hFE_max=60")
Beta=hFE_max;
Ib=Ie/(Beta+1);
Ic=Beta*Ib;
printf("    Ic=%.3f mA \n",Ic*1e3)
Vce=Vcc-Ic*Rc-Ve;
printf("    Vce=%.2f V \n",Vce)
