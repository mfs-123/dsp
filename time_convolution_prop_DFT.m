clc;
clear all;
close all;
x=input('Enter the 1st sequence');
y=input('Enter the 2nd sequence');
N=length(x)+length(y)-1;
y1=conv(x,y);
Y1=fft(y1,N);
disp('Y1');
disp(Y1);
X=fft(x,N);
Y=fft(y,N);
Y2=X.*Y;
disp('Y2');
disp(Y2);
