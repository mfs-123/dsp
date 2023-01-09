clc;
clear all;
close all;
a=input("Enter the first sequence:");
b=input("Enter the second sequence:");
l=max(length(a),length(b));
if length(a)>length(b)
    b=[b zeros(1,length(a)-length(b))];
else
    a=[a zeros(1,length(b)-length(a))];
end
c=zeros(1,l);
for n=1:l
    for k=1:l
        m=mod((n-k),l);
        c(n)=c(n)+a(k)*b(m+1);
    end
end
stem(c);