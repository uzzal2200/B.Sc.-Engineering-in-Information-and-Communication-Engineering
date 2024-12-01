
%x(n) ={1,2,3, 4, 5,6,7,6,5,4,3,2,1}. Determine and plot the following
%a. x1(n)=2x(n?5)?3x(n+4)
%b. x2(n)=x(3?n)+x(n)x(n?2)

%soluition a :
n = [-2 : 10];
x = [1:7,6:-1:1];
[x11,n11] = sigshift(x,n,5);
[x12,n12] = sigshift(x,n,-4);


[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);

subplot(2,1,1);
stem(n1,x1);
title('Sequence in Example 2.2a');
xlabel('n');
ylabel('x1(n)');

% b. x2(n)=x(3?n)+x(n)x(n?2)

nb = -2 : 10;
xb = [1:7,6:-1:1];
[x21,n21] = sigfold(xb,nb);

[x21,n21] = sigshift(x21,n21,3);

[x22,n22] = sigshift(x,n,2);

[x22,n22] = sigmult(xb,nb,x22,n22);

[x2,n2] = sigadd(x21,n21,x22,n22);
subplot(2,1,2);
stem(n2,x2);
title('Sequence in Example 2.2b');
xlabel('n');
ylabel('x2(n)');


function [y,n] = sigshift(x,m,k)
n = m+k;
y = x;
end

function [y,n] = sigadd(x1,n1,x2,n2)
max_n = max(max(n1),max(n2));
min_n = min(min(n1),min(n2));
n = min_n : max_n;
y1 = zeros(1,length(n));
y2 = zeros(1,length(n));

y1(find((n >= min(n1)) & (n <= max(n1)))) = x1;
y2(find(( n >= min(n2)) & (n <= max(n2)))) = x2;
y = y1 + y2;
end


function [y,n] = sigfold(x,n)
y = fliplr(x);
n = -fliplr(n);
end


function [y,n] = sigmult(x1,n1,x2,n2)
max_n = max(max(n1),max(n2));
min_n = min(min(n1),min(n2));
n = min_n : max_n;
y1 = zeros(1,length(n));
y2 = zeros(1,length(n));

y1(find((n >= min(n1)) & (n <= max(n1)))) = x1;
y2(find(( n >= min(n2)) & (n <= max(n2)))) = x2;
y = y1 .* y2;
end


