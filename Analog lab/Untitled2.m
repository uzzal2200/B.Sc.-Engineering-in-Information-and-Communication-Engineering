clc;
clear all;
close all;
fm=15;
B=5;
t=0:0.0001:0.25;
m=cos(2*pi*fm*t);
subplot(3,1,1)
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
fc=150;
c=sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;
y=sin(2*pi*fc*t+(B.*sin(2*pi*fm*t)));
subplot(3,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Frequency Modulated Signal');
grid on;


