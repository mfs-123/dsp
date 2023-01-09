clc;
clear all;
close all;
 
N=input('enter the no of elements: ');
x=input('enter the sequence: ');
l=input('time shift: ');
 
p=zeros(1,N);
n=0:N-1;
k=0:N-1;

z1=circshift(x,l);
disp(z1);
p=fft(z1);
disp(p);
 	z2=fft(x);

for k=0:N-1
    			p(k+1)=exp(-(i*2*pi*l*(k+1)/N)).*z2(k+1);
end
 
disp(p);
