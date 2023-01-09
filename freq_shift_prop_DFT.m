clc;
clear all;
close all;
N=input('enter the no of elements: ');
x=input('enter the sequence: ');    
l=input('freq shift: ');
p=zeros(1,N);
n=0:N-1;
k=0:N-1;
for n=0:N-1
    p(n+1)=exp(1i*2*pi*l*(n+1)/N).*x(n+1);
end
e=fft(p);
disp(e);
z=fft(x);
d=circshift(z,l);
disp(d);

