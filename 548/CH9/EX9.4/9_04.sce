pathname=get_absolute_file_path('9_04.sce')
filename=pathname+filesep()+'9_04data.sci'
exec(filename)
T=Mdot*Ve;disp(T,"T=","T=Mdot*Ve","As Pe equals ambient pressure at 30 Km Thrust T:")
Ae=Mdot/(De*Ve);disp(Ae,"Ae=","Ae=Mdot/(De*Ve)","exit area Ae:")
Me=Ve/sqrt(y*R*Te);disp(Me,"Me=","Me=Ve/sqrt(y*R*T)","exit Mach No. Me:")
printf("\Answer:\n")
printf("\n\Specific impulse : %f s\n\n",Isp)
printf("\n\Thrust: %f N\n\n",T)
printf("\n\Area of the exit: %f m^2\n\n",Ae)
printf("\n\flow mach no at exit : %f \n\n",Me)