% Define the original signal and its index range
x = [1, 2, 3, 4, 5]; % Original signal values
m = -2:2;            % Index range for the original signal
k = 5;               % Shift amount

% Call the signal shifting function
[y, n] = signalshift(x, m, k);

% Plot the original signal
subplot(2, 1, 1);
stem(m, x, 'filled');
xlabel('m');
ylabel('x(m)');
title('Original Signal');
grid on;

% Plot the shifted signal
subplot(2, 1, 2);
stem(n, y, 'filled');
xlabel('n');
ylabel('y(n)');
title('Shifted Signal');
grid on;

% Define the signal shifting function
function [y, n] = signalshift(x, m, k)
    n = m + k; % Shift the indices by k
    y = x;     % Signal values remain unchanged
end
