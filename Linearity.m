x1=input('enter the first sequence: ');
x2=input('enter the second sequence: ');
a1=input('enter a: ');
a2=input('enter b: ');
 

y=(a1.*x1)+(a2.*x2);
z=fft(y);
disp(z); 
X1=fft(x1);
X2=fft(x2);
 
Y=(a1.*X1)+(a2.*X2);
subplot(2,1,1);
polarplot(z,'*');
title ('')
grid on;
subplot(2,1,2);
polarplot(Y,'*');
grid on;
