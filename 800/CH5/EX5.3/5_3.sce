//Clear//
clc
clear
exec('5_3.sci');

x=log(CHCl);
y=log(-rHCl);
plot2d(x,y); 

xtitle( 'Figure E5-3.2 ', 'CHCl (g mol/ liter)', 'rHCl0 (g mol / cm^2.s)' ) ;