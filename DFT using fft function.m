clc;
clear all;
close all;
x=input("Enter the sequence:");
N=input("No. of point:");
k=fft(x,N);
polarplot(k,'*');