clc;
clear all;
close all;
fc=20;
fs=160;
fm=0.4;
vc=1;
vm=1;
t=0:1/fs:10;
c=vc*cos(2*pi*fc*t);
m=vm*cos(2*pi*fm*t);
y=ammod(m,fc,fs);
subplot(5,1,1);
plot(t,m);
title('Modulating Signal');
xlabel('Time');
ylabel('Amlitude');
subplot(5,1,2);
plot(t,c);
title('Carrier Signal');
xlabel('Time(s)');
ylabel('amplitude');
subplot(5,1,3);
plot(t,y);
title('Modulated Signal');
xlabel('Time');
ylabel('amplitude');
Vd(1)=0;
for i=2:length(y)
 if y(i)>Vd(i-1)
 Vd(i)=y(i);
 else
 Vd(i)=Vd(i-1)-0.023*Vd(i-1);
 end
end
h=fir1(100,0.0125,'low');
foutputc=filter(h,1,Vd);
subplot(5,1,4);
plot(t,Vd);
title('Envelope detector output of modulating signal');
xlabel('Time(s)');
ylabel('amplitude');
subplot(5,1,5);
plot(t,foutputc);
title('Demodulated signal');
xlabel('Time(s)');
ylabel('amplitude');

    
    



