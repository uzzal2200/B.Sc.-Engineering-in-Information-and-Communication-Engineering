clc;
close all;
clear all;
fl=10;
for f=1:500
x(f)=(1/sqrt(1+(fl/f)^2));
f2(f)=f;
end
subplot(2,1,1);
plot(f2,x);
title('Preemphasis waveform');
for f=1:500
y(f)=(1/sqrt(1+(f/fl)^2));
f3(f) = f;
end
subplot(2,1,2);
plot(f3,y);
title('Deemphasis waveform');
