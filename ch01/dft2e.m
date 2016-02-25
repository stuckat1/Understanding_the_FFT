%
% author: Ke-Wei Ma
% contact: keweima at gmail.com
% summary: replicate Fig 1.4.5
%

clear all;
clf;

h = 1:2:3000;               % odd-harmonics.  1, 3, 5 ... 1,000
a = 1 ./ h;                 % amplitude.  1/1, 1/3, 1/5 ... 1,000

n = 500;
i = linspace(0, 4*pi, n);   % number of steps

j = h' * i;

y = cos(j) .* repmat(a',1,n); % repmat converts amplitude vector to mirrored columns in new matrix

% Plot the first 5 odd harmonics and then the sum of all 
% the harmonics 

figure
plot(i, y(1,:), ...
     i, y(2,:), ...
     i, y(3,:), ...
     i, y(4,:), ...
     i, y(5,:), ...
     i, sum(y), 'r');

title('Fig 1.4.5 - Y = Y + Cos(I*J)/J for odd terms');
