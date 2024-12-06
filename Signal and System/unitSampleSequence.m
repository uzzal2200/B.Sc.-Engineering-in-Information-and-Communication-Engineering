clc;
close all;
clear all;

% Generate the impulse sequence
[x, n] = impseq(3, -5, 5);

% Plot the impulse sequence
stem(n, x, 'filled'); % Corrected argument order
xlabel('n');
ylabel('x(n)');
title('Unit Sample Space');

% Define the function after the main code
function [x, n] = impseq(n0, n1, n2)
n = n1:n2;         % Generate the range of n
x = [(n-n0) == 0];     % Impulse sequence: 1 at n=n0, 0 elsewhere
end
