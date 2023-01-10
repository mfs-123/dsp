clc;
clear all;
close all;
x=input('Enter the 1st sequence');
y=input('Enter the 2nd sequence');
N=input('Enter the number of samples');
X=fft(x,N);
Y=fft(y,N);
sum=0;
for i=0:N-1;
    p=x(i+1)*y(i+1);
    sum=sum+p;
end
A=sum;
disp('A');
disp(A);
sum2=0;
for j=0:N-1;
   q=abs(X(j+1)*Y(j+1));
   sum2=sum2+q;
end
B=(1/N)*sum2;
disp('B');
disp(B);

