clear;
clc;
pdi=1000;
pdl=60;
ud=1;
pdr=pdi+pdl;
p=(pdr+pdi)/2;
id=pdi/ud;
pdc=pdr*1e3/id;
rec=pdc/2;
vdc=(rec+(pdi/2))/2;
udr=rec;
udi=pdi/2;
r=(udr-udi)*1e3/id;
mprintf("the sending end power=%dMW\npower in middle=%dMW\nDC sending end voltage=%dkV\nrecieving end DC voltage=%dkV\nDC voltage in middle of line=%dkV\nLine Resistance =%dohm",pdr,p,pdc,rec,vdc,r);
