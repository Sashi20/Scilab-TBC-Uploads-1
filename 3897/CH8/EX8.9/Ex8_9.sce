clc; clear;
// Example 8.9
// Page 243
// Given data
L=400; // sewer length, ft
Ds=12; // sewe diameter, inch
Dm=4; // manhole diameter, ft
d=2; // drop , inch in 1 hr
//estimation
A=(%pi*Dm^2)/4; // area, ft^2
d=d/12; // drop, ft
V=A*d; // volume of manhole, ft^3
V=V*7.5; // volume of manhole, gal
L=L/5280; // length of sewer, mi
R=V*24; // leackge rate, gal/d
ex=R/Ds/L; // exfiltration, gal/d/in/mi
printf(' The exfiltration = %f gal/d/in/mi',ex)
clear




