clc;
clear all;
clear all;
[x,n] = stepseq(3,-5,5);
stem(n,x,'filled')
xlabel('n');
ylabel('x(n)');
title('Unit step sequence');
function [x,n] = stepseq(n0,n1,n2)
n = [n1:n2];
x = [(n-n0) >= 0];
end
