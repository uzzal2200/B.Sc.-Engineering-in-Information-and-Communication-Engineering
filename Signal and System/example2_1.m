%EXAMPLE2.1 Generate and plot each of the following sequences over the indicated interval.
 %a. x(n)=2?(n+2)??(n?4), ?5 ?n?5.
% b. x(n)=n[u(n)?u(n?10)]+10e?0.3(n?10)[u(n?10)?u(n?20)], 0 ? n ? 20.
% c. x(n)=cos(0.04?n)+0.2w(n), 0 ? n ? 50, where w(n) is aGaussian
% random sequence with zero mean and unit variance.
% d. ˜x(n)={...,5,4,3,2,1,5 4, 3,2,1,5,4,3,2,1,...}; ?10 ? n ? 9.


% Part a: Sequence x(n) = 2?(n+2) - ?(n-4), -5 ? n ? 5
n_a = -5:5;
x_a = 2 * impseq(-2, -5, 5) - impseq(4, -5, 5);
subplot(2, 2, 1);
stem(n_a, x_a, 'filled');
xlabel('n');
ylabel('x(n)');
title('Sequence in Problem 2.1a');

% Part b: Sequence x(n) = n[u(n) ? u(n?10)] + 10e^?0.3(n?10)[u(n?10) ? u(n?20)], 0 ? n ? 20
n_b = 0:20;
x1_b = n_b .* (stepseq(0, 0, 20) - stepseq(10, 0, 20));
x2_b = 10 * exp(-0.3 * (n_b - 10)) .* (stepseq(10, 0, 20) - stepseq(20, 0, 20));
x_b = x1_b + x2_b;
subplot(2, 2, 2);
stem(n_b, x_b, 'filled');
xlabel('n');
ylabel('x(n)');
title('Sequence in Problem 2.1b');

% c. x(n)=cos(0.04?n)+0.2w(n), 0 ? n ? 50.
n_c = 0:50;
x_c = cos(0.04*pi*n_c) + 0.2*randn(size(n_c));
subplot(2,2,3);
stem(n_c,x_c,'filled');
xlabel('n');
ylabel('x(n)');
title('Sequence in Problem 2.1c');

% d. x(n)={...,5,4,3,2,1,5,4,3,2,1,...}; -10 ? n ? 9.
n_d = -10:9; % Define the range of indices
x_d = [5, 4, 3, 2, 1]; % Define the base sequence

% Repeat the sequence to cover the range of n_d
xtilde = repmat(x_d, 1, ceil(length(n_d) / length(x_d))); % Repeat the sequence
xtilde = xtilde(1:length(n_d)); % Trim to the length of n_d

% Plot the sequence
subplot(2, 2, 4);
stem(n_d, xtilde, 'filled'); % Plot the discrete signal
title('Sequence in Problem 2.1d');
xlabel('n');
ylabel('x?(n)');


% Sub-function for impulse sequence
function [x, n] = impseq(n0, n1, n2)
    n = n1:n2;         
    x = (n - n0) == 0; 
end

% Sub-function for step sequence
function [x, n] = stepseq(n0, n1, n2)
    n = n1:n2;
    x = (n - n0) >= 0;
end

