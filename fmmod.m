clc
clear all
close all
n=3;
fm=20;
t=0:0.0001:2/fm;
A=20;
m=A*sin(2*pi*t*fm);
subplot(4,1,1)
plot(t,m)
title('Message Signal Wave')
xlabel('Time')
ylabel('Amplitude')

fc=500;
Ac=20;
c=Ac*sin(2*pi*t*fc);
subplot(4,1,2)
plot(t,c)
title('Carrier Signal Wave')
xlabel('Time')
ylabel('Amplitude')

FS=20*fc;
s=modulate(m,fc,FS,'fm');
subplot(4,1,3)
plot(t,s)
title('FM Modulated Signal Wave')
xlabel('Time')
ylabel('Amplitude')

d=demod(s,fc,FS,'fm');
subplot(4,1,4)
plot(t,d)
title('FM Demodulated Signal Wave')
xlabel('Time')
ylabel('Amplitude')


