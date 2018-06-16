clc
clear all
close all
n=3;
fm=20;
t=0:0.00001:0.15;
A=3;
m=A*sin(2*pi*t*fm);
subplot(4,1,1)
plot(t,m)
title('Message Signal Wave')
xlabel('Time')
ylabel('Amplitude')

fc=100;
Ac=3;
c=Ac*sin(2*pi*t*fc);
subplot(4,1,2)
plot(t,c)
title('Carrier Signal Wave')
xlabel('Time')
ylabel('Amplitude')

FS=150*fc;
s=modulate(m,fc,FS,'amssb');
subplot(4,1,3)
plot(t,s)
title('SSB Modulated Signal Wave')
xlabel('Time')
ylabel('Amplitude')

d=demod(s,fc,FS,'am');
subplot(4,1,4)
plot(t,d)
title('SSB Demodulated Signal Wave')
xlabel('Time')
ylabel('Amplitude')


