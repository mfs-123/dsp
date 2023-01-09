%sampling theorem

clc;
clear ;
close all;


f=input('enter the input frequency');
t=0:0.001:0.1;
x=cos(2*pi*f*t);

%under sampling

fs=1.5*f;
ts=1/fs;
tn=0:ts:0.1;
x1=cos(2*pi*f*tn);
subplot(3,1,1);
plot(t,x,'b',tn,x1,'r*--');
title('under sampling');

%critical sampling
fs=2*f;
ts=1/fs;
tn=0:ts:0.1;
x1=cos(2*pi*f*tn);
subplot(3,1,2);
plot(t,x,'b',tn,x1,'r*--');
title('critical sampling');

%over sampling
fs=10*f;
ts=1/fs;
tn=0:ts:0.1;
x1=cos(2*pi*f*tn);
subplot(3,1,3);
plot(t,x,'b',tn,x1,'r*--');
title('critical sampling');