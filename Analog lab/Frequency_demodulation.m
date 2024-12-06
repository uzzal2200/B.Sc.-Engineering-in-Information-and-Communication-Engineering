clc;
clear all;
close all;
fm=2000;
fc=5000;
fs = 200000;
mi=2;
t=(0:1/fs:0.01);
%t=0:0.001:0.1;
m=sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;
c=sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;
y=sin(2*pi*fc*t+(mi.*m));
subplot(4,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amlitude');
title('FM Singnal');
grid on;
y=diff(y);
y=abs(y);
subplot(4,1,4);
[b,a]=butter(1,0.005);
z=filter(b,a,y);
z=10*z;
plot(z);
xlabel('Time');
ylabel('Amlitude');
title('FM Demodulation Signal');
grid on;