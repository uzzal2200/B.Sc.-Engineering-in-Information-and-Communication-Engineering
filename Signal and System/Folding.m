% Define the signal and its index range
x = [1,2,3,4, 5]; % Example signal
n = 0:4;             % Index range of the signal

% Call the sigfold function to compute the folded signal
[y, n_folded] = sigfold(x, n);

% Plot the original signal
figure;
subplot(2, 1, 1);
stem(n, x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Original Signal');


% Plot the folded signal
subplot(2, 1, 2);
stem(n_folded, y, 'filled');
xlabel('n');
ylabel('x(-n)');
title('Folded Signal');


% Define the sigfold function
function [y, n_folded] = sigfold(x, n)
    y = fliplr(x);        % Flip the signal values
    n_folded = -fliplr(n); % Flip and negate the indices
end
