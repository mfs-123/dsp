clc;
clear all;
close all;
x=input('Enter the 1st sequence');
y=input('Enter the 2nd sequence');
N=length(x)+length(y)-1;
x=[x zeros(1,(N-length(x)))];
y=[y zeros(1,(N-length(y)))];
Y1=x.*y;
Y1=fft(Y1,N);
disp('Y1:');
disp(Y1);
X=fft(x,N);
Y=fft(y,N);
Y2=cconv(X,Y,N);
Y2=(1/N)*Y2;
disp('Y2:');
disp(Y2);
