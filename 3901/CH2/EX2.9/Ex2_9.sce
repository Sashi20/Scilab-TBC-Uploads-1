
clc
close;

//execute the dependecy file first that is needed for graphical convolution
//exec('/home/satyajit/Desktop/my_octave/scilab_project/chapter_2/conv_gui.sci', -1)
//change your path to the location of the file "conv_gui.sci"


//all the inputs should be given in the form of strings

t='[-5:0.02:5]';
f1='u(t+1)-u(t-1)';   //defining x(t)
f2='t.*(u(t)-u(t-3))'; //defining h(t)
conv_gui(f1,f2,t);


//for analysis goto options > illustration > move right in the plot window
