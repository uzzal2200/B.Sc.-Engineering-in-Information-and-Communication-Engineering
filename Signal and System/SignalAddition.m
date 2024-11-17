% Define the signals
x1 = 1:1:5;          % Signal x1
x2 = 1:0.2:2.2;      % Signal x2

% Define their lengths (indices as lengths)
n1 = 0:length(x1)-1; % Index range for x1
n2 = 0:length(x2)-1; % Index range for x2

% Add the signals using the sigadd function
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
grid on;  
% Function for signal addition
function [y, n] = sigadd(x1, n1, x2, n2)
    % Determine the range for the result
    max_n = max(max(n1), max(n2));
    min_n = min(min(n1), min(n2));
    n = min_n:max_n; % Unified range of indices

    % Initialize arrays with zeros for alignment
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));

    % Align x1 to the unified range
    y1(find((n >= min(n1)) & (n <= max(n1)))) = x1;

    % Align x2 to the unified range
    y2(find((n >= min(n2)) & (n <= max(n2)))) = x2;

    % Perform element-wise addition
    y = y1 + y2;
end
