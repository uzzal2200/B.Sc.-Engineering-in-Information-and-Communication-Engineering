x1 = -1:1:10;
x2 = -5:3:15;
n1 = 0:length(x1) - 1;
n2 = 0:length(x2) - 1;
[y, n] = sigadd(x1, n1, x2, n2);

% Plot x1
subplot(3, 1, 1);
stem(n1, x1, 'filled');
xlabel('n');
ylabel('x1(n)');
title('Signal x1');
grid on;

% Plot x2
subplot(3, 1, 2);
stem(n2, x2, 'filled');
xlabel('n');
ylabel('x2(n)');
title('Signal x2');
grid on;

subplot(3,1,3);
stem(n, y, 'filled'); % Plot y(n) with discrete markers
xlabel('n');          % Label for x-axis
ylabel('y(n)');       % Label for y-axis
title('Addition of Two Signals'); % Title of the plot
grid on;              % Enable grid

function [y,n] = sigadd(x1,n1,x2,n2);
max_n = max(max(n1),max(n2));
min_n = min(min(n1),min(n2));
n = min_n :  max_n ;
y1 = zeros(1, length(n));
y2 = zeros(1, length(n));
y1(find((n>=min(n1)) & (n<=max(n1)) == 1)) = x1;
y2(find((n>=min(n2)) & (n<=max(n2)) == 1)) = x2;
y = y1+y2;
end