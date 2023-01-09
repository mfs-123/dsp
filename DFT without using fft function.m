clc;
clear all;
close all;
x=input('enter the sequence:');
p = length(x)-1;
cga1=[];
cga=0;
cga1(end+1)=sum(x);
magnitude = [];
phase = [];
for k = 1:1:p
    for m = 1:1:length(x)-1
        cga=cga+x(m)*exp(-(1i*2*pi*m*k)/4);
    end  
    cga1(end+1)=cga;
    cga=0;
end
a = cga1;
for i = 1:1:length(a)
    rho=abs(a(i));
    magnitude(end+1) = rho;
    theta=angle(a(i));
    phase(end+1) = theta*(180/pi);
end
subplot(1,2,1);stem(magnitude)
subplot(1,2,2);stem(phase)
